//
// Sources/SwiftProtobuf/AsyncMessageSequence.swift - Async sequence over binary delimited protobuf
//
// Copyright (c) 2023 Apple Inc. and the project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See LICENSE.txt for license information:
// https://github.com/apple/swift-protobuf/blob/main/LICENSE.txt
//
// -----------------------------------------------------------------------------
///
/// An async sequence of messages decoded from a binary delimited protobuf stream.
///
// -----------------------------------------------------------------------------

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
extension Message {
  
  /// Creates an asynchronous sequence of messages decoded from an asynchronous sequence of bytes.
  public static func asyncSequence<Base: AsyncSequence> (
    baseSequence: Base,
    extensions: ExtensionMap? = nil,
    partial: Bool = false,
    options: BinaryDecodingOptions = BinaryDecodingOptions()
  ) -> AsyncMessageSequence<Base, Self> {
    AsyncMessageSequence<Base, Self>(
      baseSequence: baseSequence,
      extensions: extensions,
      partial: partial,
      options: options
    )
  }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
/// An asynchronous sequence of messages decoded from an asynchronous sequence of bytes.
public struct AsyncMessageSequence<Base: AsyncSequence, M: Message>:
  AsyncSequence, Sendable
where Base: Sendable, Base.Element == UInt8 {
  
  /// The message type in this asynchronous sequence.
  public typealias Element = M
  
  private let baseSequence: Base
  private let extensions: ExtensionMap?
  private let partial: Bool
  private let options: BinaryDecodingOptions
  
  public init(
    baseSequence: Base,
    extensions: ExtensionMap? = nil,
    partial: Bool = false,
    options: BinaryDecodingOptions = BinaryDecodingOptions()
  ) {
    self.baseSequence = baseSequence
    self.extensions = extensions
    self.partial = partial
    self.options = options
  }
  
  /// An asynchronous iterator that produces the messages of this asynchronous sequence
  @frozen public struct AsyncIterator: AsyncIteratorProtocol, Sendable
  where Base.AsyncIterator: Sendable {
    
    private var iterator: Base.AsyncIterator?
    private let extensions: ExtensionMap?
    private let partial: Bool
    private let options: BinaryDecodingOptions
    
    init(
      iterator: Base.AsyncIterator,
      extensions: ExtensionMap?,
      partial: Bool,
      options: BinaryDecodingOptions
    ) {
      self.iterator = iterator
      self.extensions = extensions
      self.partial = partial
      self.options = options
    }
    
    /// Aysnchronously reads the next varint
    private mutating func nextVarInt() async throws -> UInt64? {
      var messageSize: UInt64 = 0
      var shift: UInt64 = 0
      
      while let byte = try await iterator?.next() {
        messageSize |= UInt64(byte & 0x7f) << shift
        shift += UInt64(7)
        if shift > 35 {
          throw BinaryDecodingError.malformedProtobuf
        }
        if (byte & 0x80 == 0) {
          return messageSize
        }
      }
      if (shift > 0) {
        // The stream has ended inside a varint.
        throw BinaryDecodingError.truncated
      }
      return nil // End of stream reached.
    }
    
    /// Asynchronously advances to the next message and returns it, or ends the
    /// sequence if there is no next message.
    ///
    /// - Returns: The next message, if it exists, or `nil` to signal the end of
    ///   the sequence.
    public mutating func next() async throws -> M? {
      guard let messageSize = try await nextVarInt() else {
        iterator = nil
        return nil
      }
      if messageSize == 0 {
        return try M(
          serializedBytes: [],
          extensions: extensions,
          partial: partial,
          options: options
        )
      } else if messageSize > 0x7fffffff {
        throw BinaryDecodingError.tooLarge
      }
      
      var buffer = [UInt8](repeating: 0, count: Int(messageSize))
      var consumedBytes = 0
      
      while let byte = try await iterator?.next() {
        buffer[consumedBytes] = byte
        consumedBytes += 1
        if consumedBytes == messageSize {
          return try M(
            serializedBytes: buffer,
            extensions: extensions,
            partial: partial,
            options: options
          )
        }
      }
      throw BinaryDecodingError.truncated // The buffer was not filled.
    }
  }
  
  /// Creates the asynchronous iterator that produces elements of this
  /// asynchronous sequence.
  ///
  /// - Returns: An instance of the `AsyncIterator` type used to produce
  /// messages in the asynchronous sequence.
  public func makeAsyncIterator() -> AsyncMessageSequence.AsyncIterator {
    AsyncIterator(
      iterator: baseSequence.makeAsyncIterator(),
      extensions: extensions,
      partial: partial,
      options: options
    )
  }
}