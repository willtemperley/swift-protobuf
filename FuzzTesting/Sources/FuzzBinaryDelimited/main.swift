import Foundation

import FuzzCommon

import SwiftProtobuf

@_cdecl("LLVMFuzzerTestOneInput")
public func FuzzDelimited(_ start: UnsafeRawPointer, _ count: Int) -> CInt {
  let bytes = UnsafeRawBufferPointer(start: start, count: count)
  var msg: SwiftProtoTesting_Fuzz_Message?
  do {
    let istream = InputStream(data: Data(bytes))
    istream.open()
    msg = try BinaryDelimited.parse(
      messageType: SwiftProtoTesting_Fuzz_Message.self,
      from: istream,
      extensions: SwiftProtoTesting_Fuzz_FuzzTesting_Extensions)
  } catch {
    // Error parsing are to be expected since not all input will be well formed.
  }
  // Test serialization for completeness.
  // If a message was parsed, it should not fail to serialize, so assert as such.
  if let msg = msg {
    let ostream = OutputStream.toMemory()
    ostream.open()
    try! BinaryDelimited.serialize(message: msg, to: ostream)
  }

  return 0
}
