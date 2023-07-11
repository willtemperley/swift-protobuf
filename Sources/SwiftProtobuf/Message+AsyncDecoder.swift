// Sources/SwiftProtobuf/Message+AsyncDecoder.swift - Async decoder for binary delimited protobuf
//
// Copyright (c) 2023 Apple Inc. and the project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See LICENSE.txt for license information:
// https://github.com/apple/swift-protobuf/blob/main/LICENSE.txt
//
// -----------------------------------------------------------------------------
///
/// Extensions to `Message` to provide an async decoder for binary delimited protobuf
///
// -----------------------------------------------------------------------------

import Foundation

extension Message {
  
  ///Create an async decoder for binary delimited protobuf stream
  @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
  public static func asyncDecoder() -> AsyncDecoder<Self> {
    return AsyncDecoder<Self>()
  }
}

///Asynchronously decodes binary delimited protobuf streams
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public class AsyncDecoder<M: Message> {
  
  var continuation: AsyncStream<M>.Continuation?
  
  public lazy var messages: AsyncStream<M> = {
    AsyncStream { (continuation: AsyncStream<M>.Continuation) -> Void in
      self.continuation = continuation
    }
  }()
  
  public func parse(bytes: URL.AsyncBytes) async throws {
    
    var insideMessage = false
    var messageSize: UInt64 = 0
    var buffer = [UInt8]()
    var shift: UInt64 = 0
    var consumedBytes = 0
    
    for try await byte in bytes {
      
      if (!insideMessage) {
        messageSize |= UInt64(byte & 0x7f) << shift
        shift += UInt64(7)
        if shift > 63 {
          throw BinaryDecodingError.malformedProtobuf
        }
        if (byte == 0) {
          continuation?.yield(M())
        } else if (byte & 0x80 == 0) {
          insideMessage = true
          buffer = [UInt8](repeating: 0, count: Int(messageSize))
        }
      } else {
        buffer[consumedBytes] = byte
        consumedBytes += 1
        if (consumedBytes == messageSize) {
          insideMessage = false
          let message = try M(serializedBytes: buffer)
          continuation?.yield(message)
          consumedBytes = 0
          messageSize = 0
          shift = 0
        }
      }
    }
    continuation?.finish()
  }
}
