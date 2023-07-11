// Tests/SwiftProtobufTests/Test_AsyncDecodingStream.swift - Tests for async decoding of binary delimited protobuf
//
// Copyright (c) 2023 Apple Inc. and the project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See LICENSE.txt for license information:
// https://github.com/apple/swift-protobuf/blob/main/LICENSE.txt
//
// -----------------------------------------------------------------------------

import Foundation
import XCTest
import SwiftProtobuf

class Test_AsyncDecoder: XCTestCase {
  
  //Decode zero length messages
  func testZeroLengthMessages() async throws {
    var messages = [ProtobufUnittest_TestAllTypes]()
    for _ in 1...5 {
      messages.append(ProtobufUnittest_TestAllTypes())
    }
    let fileURL = temporaryFileURL()
    try writeTestProtobuf(fileURL, messages: messages)
    
    let decoder = ProtobufUnittest_TestAllTypes.asyncDecoder()
    Task {
      try await decoder.parse(bytes: fileURL.resourceBytes)
    }
    var count = 0
    for await message in decoder.messages {
      XCTAssertEqual(message, ProtobufUnittest_TestAllTypes())
      count += 1
    }
    XCTAssertEqual(count, 5)
  }
  
  //write 10 messages to a file and ensure they are rehydrated correctly
  func testNormalExecution() async throws {
    var messages = [ProtobufUnittest_TestAllTypes]()
    for messageNumber in 1...10 {
      let message = ProtobufUnittest_TestAllTypes.with {
        $0.optionalInt32 = Int32(messageNumber)
      }
      messages.append(message)
    }

    let fileURL = temporaryFileURL()
    try writeTestProtobuf(fileURL, messages: messages)
    
    let decoder = ProtobufUnittest_TestAllTypes.asyncDecoder()
    Task {
      try await decoder.parse(bytes: fileURL.resourceBytes)
    }
    var count = 0
    for await message in decoder.messages {
      count += 1
      let expectedMessage = ProtobufUnittest_TestAllTypes.with {
        $0.optionalInt32 = Int32(count)
      }
      XCTAssertEqual(expectedMessage, message)
    }
    XCTAssertEqual(count, 10)
  }
  
  //Creates a URL for a temporary file on disk. Registers a teardown block to
  //delete a file at that URL (if one exists) during test teardown.
  func temporaryFileURL() -> URL {
    
    let directory = NSTemporaryDirectory()
    let filename = UUID().uuidString
    let fileURL = URL(fileURLWithPath: directory).appendingPathComponent(filename)
    
    addTeardownBlock {
      do {
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: fileURL.path) {
          try fileManager.removeItem(at: fileURL)
          XCTAssertFalse(fileManager.fileExists(atPath: fileURL.path))
        }
      } catch {
        XCTFail("Error while deleting temporary file: \(error)")
      }
    }
    return fileURL
  }
  
  //Writes messages to the provided URL
  func writeTestProtobuf(_ fileURL: URL, messages: [Message]) throws {
    let outputStream = OutputStream(url: fileURL, append: false)!
    outputStream.open()
    for message in messages {
      try BinaryDelimited.serialize(message: message, to: outputStream)
    }
    outputStream.close()
  }
}
