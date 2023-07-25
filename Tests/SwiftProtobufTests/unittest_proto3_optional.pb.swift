// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: unittest_proto3_optional.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
// https://developers.google.com/protocol-buffers/
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//     * Neither the name of Google Inc. nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _3: SwiftProtobuf.ProtobufAPIVersion_3 {}
  typealias Version = _3
}

struct SwiftProtoTesting_TestProto3Optional {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Singular
  var optionalInt32: Int32 {
    get {return _storage._optionalInt32 ?? 0}
    set {_uniqueStorage()._optionalInt32 = newValue}
  }
  /// Returns true if `optionalInt32` has been explicitly set.
  var hasOptionalInt32: Bool {return _storage._optionalInt32 != nil}
  /// Clears the value of `optionalInt32`. Subsequent reads from it will return its default value.
  mutating func clearOptionalInt32() {_uniqueStorage()._optionalInt32 = nil}

  var optionalInt64: Int64 {
    get {return _storage._optionalInt64 ?? 0}
    set {_uniqueStorage()._optionalInt64 = newValue}
  }
  /// Returns true if `optionalInt64` has been explicitly set.
  var hasOptionalInt64: Bool {return _storage._optionalInt64 != nil}
  /// Clears the value of `optionalInt64`. Subsequent reads from it will return its default value.
  mutating func clearOptionalInt64() {_uniqueStorage()._optionalInt64 = nil}

  var optionalUint32: UInt32 {
    get {return _storage._optionalUint32 ?? 0}
    set {_uniqueStorage()._optionalUint32 = newValue}
  }
  /// Returns true if `optionalUint32` has been explicitly set.
  var hasOptionalUint32: Bool {return _storage._optionalUint32 != nil}
  /// Clears the value of `optionalUint32`. Subsequent reads from it will return its default value.
  mutating func clearOptionalUint32() {_uniqueStorage()._optionalUint32 = nil}

  var optionalUint64: UInt64 {
    get {return _storage._optionalUint64 ?? 0}
    set {_uniqueStorage()._optionalUint64 = newValue}
  }
  /// Returns true if `optionalUint64` has been explicitly set.
  var hasOptionalUint64: Bool {return _storage._optionalUint64 != nil}
  /// Clears the value of `optionalUint64`. Subsequent reads from it will return its default value.
  mutating func clearOptionalUint64() {_uniqueStorage()._optionalUint64 = nil}

  var optionalSint32: Int32 {
    get {return _storage._optionalSint32 ?? 0}
    set {_uniqueStorage()._optionalSint32 = newValue}
  }
  /// Returns true if `optionalSint32` has been explicitly set.
  var hasOptionalSint32: Bool {return _storage._optionalSint32 != nil}
  /// Clears the value of `optionalSint32`. Subsequent reads from it will return its default value.
  mutating func clearOptionalSint32() {_uniqueStorage()._optionalSint32 = nil}

  var optionalSint64: Int64 {
    get {return _storage._optionalSint64 ?? 0}
    set {_uniqueStorage()._optionalSint64 = newValue}
  }
  /// Returns true if `optionalSint64` has been explicitly set.
  var hasOptionalSint64: Bool {return _storage._optionalSint64 != nil}
  /// Clears the value of `optionalSint64`. Subsequent reads from it will return its default value.
  mutating func clearOptionalSint64() {_uniqueStorage()._optionalSint64 = nil}

  var optionalFixed32: UInt32 {
    get {return _storage._optionalFixed32 ?? 0}
    set {_uniqueStorage()._optionalFixed32 = newValue}
  }
  /// Returns true if `optionalFixed32` has been explicitly set.
  var hasOptionalFixed32: Bool {return _storage._optionalFixed32 != nil}
  /// Clears the value of `optionalFixed32`. Subsequent reads from it will return its default value.
  mutating func clearOptionalFixed32() {_uniqueStorage()._optionalFixed32 = nil}

  var optionalFixed64: UInt64 {
    get {return _storage._optionalFixed64 ?? 0}
    set {_uniqueStorage()._optionalFixed64 = newValue}
  }
  /// Returns true if `optionalFixed64` has been explicitly set.
  var hasOptionalFixed64: Bool {return _storage._optionalFixed64 != nil}
  /// Clears the value of `optionalFixed64`. Subsequent reads from it will return its default value.
  mutating func clearOptionalFixed64() {_uniqueStorage()._optionalFixed64 = nil}

  var optionalSfixed32: Int32 {
    get {return _storage._optionalSfixed32 ?? 0}
    set {_uniqueStorage()._optionalSfixed32 = newValue}
  }
  /// Returns true if `optionalSfixed32` has been explicitly set.
  var hasOptionalSfixed32: Bool {return _storage._optionalSfixed32 != nil}
  /// Clears the value of `optionalSfixed32`. Subsequent reads from it will return its default value.
  mutating func clearOptionalSfixed32() {_uniqueStorage()._optionalSfixed32 = nil}

  var optionalSfixed64: Int64 {
    get {return _storage._optionalSfixed64 ?? 0}
    set {_uniqueStorage()._optionalSfixed64 = newValue}
  }
  /// Returns true if `optionalSfixed64` has been explicitly set.
  var hasOptionalSfixed64: Bool {return _storage._optionalSfixed64 != nil}
  /// Clears the value of `optionalSfixed64`. Subsequent reads from it will return its default value.
  mutating func clearOptionalSfixed64() {_uniqueStorage()._optionalSfixed64 = nil}

  var optionalFloat: Float {
    get {return _storage._optionalFloat ?? 0}
    set {_uniqueStorage()._optionalFloat = newValue}
  }
  /// Returns true if `optionalFloat` has been explicitly set.
  var hasOptionalFloat: Bool {return _storage._optionalFloat != nil}
  /// Clears the value of `optionalFloat`. Subsequent reads from it will return its default value.
  mutating func clearOptionalFloat() {_uniqueStorage()._optionalFloat = nil}

  var optionalDouble: Double {
    get {return _storage._optionalDouble ?? 0}
    set {_uniqueStorage()._optionalDouble = newValue}
  }
  /// Returns true if `optionalDouble` has been explicitly set.
  var hasOptionalDouble: Bool {return _storage._optionalDouble != nil}
  /// Clears the value of `optionalDouble`. Subsequent reads from it will return its default value.
  mutating func clearOptionalDouble() {_uniqueStorage()._optionalDouble = nil}

  var optionalBool: Bool {
    get {return _storage._optionalBool ?? false}
    set {_uniqueStorage()._optionalBool = newValue}
  }
  /// Returns true if `optionalBool` has been explicitly set.
  var hasOptionalBool: Bool {return _storage._optionalBool != nil}
  /// Clears the value of `optionalBool`. Subsequent reads from it will return its default value.
  mutating func clearOptionalBool() {_uniqueStorage()._optionalBool = nil}

  var optionalString: String {
    get {return _storage._optionalString ?? String()}
    set {_uniqueStorage()._optionalString = newValue}
  }
  /// Returns true if `optionalString` has been explicitly set.
  var hasOptionalString: Bool {return _storage._optionalString != nil}
  /// Clears the value of `optionalString`. Subsequent reads from it will return its default value.
  mutating func clearOptionalString() {_uniqueStorage()._optionalString = nil}

  var optionalBytes: Data {
    get {return _storage._optionalBytes ?? Data()}
    set {_uniqueStorage()._optionalBytes = newValue}
  }
  /// Returns true if `optionalBytes` has been explicitly set.
  var hasOptionalBytes: Bool {return _storage._optionalBytes != nil}
  /// Clears the value of `optionalBytes`. Subsequent reads from it will return its default value.
  mutating func clearOptionalBytes() {_uniqueStorage()._optionalBytes = nil}

  var optionalCord: String {
    get {return _storage._optionalCord ?? String()}
    set {_uniqueStorage()._optionalCord = newValue}
  }
  /// Returns true if `optionalCord` has been explicitly set.
  var hasOptionalCord: Bool {return _storage._optionalCord != nil}
  /// Clears the value of `optionalCord`. Subsequent reads from it will return its default value.
  mutating func clearOptionalCord() {_uniqueStorage()._optionalCord = nil}

  var optionalNestedMessage: SwiftProtoTesting_TestProto3Optional.NestedMessage {
    get {return _storage._optionalNestedMessage ?? SwiftProtoTesting_TestProto3Optional.NestedMessage()}
    set {_uniqueStorage()._optionalNestedMessage = newValue}
  }
  /// Returns true if `optionalNestedMessage` has been explicitly set.
  var hasOptionalNestedMessage: Bool {return _storage._optionalNestedMessage != nil}
  /// Clears the value of `optionalNestedMessage`. Subsequent reads from it will return its default value.
  mutating func clearOptionalNestedMessage() {_uniqueStorage()._optionalNestedMessage = nil}

  var lazyNestedMessage: SwiftProtoTesting_TestProto3Optional.NestedMessage {
    get {return _storage._lazyNestedMessage ?? SwiftProtoTesting_TestProto3Optional.NestedMessage()}
    set {_uniqueStorage()._lazyNestedMessage = newValue}
  }
  /// Returns true if `lazyNestedMessage` has been explicitly set.
  var hasLazyNestedMessage: Bool {return _storage._lazyNestedMessage != nil}
  /// Clears the value of `lazyNestedMessage`. Subsequent reads from it will return its default value.
  mutating func clearLazyNestedMessage() {_uniqueStorage()._lazyNestedMessage = nil}

  var optionalNestedEnum: SwiftProtoTesting_TestProto3Optional.NestedEnum {
    get {return _storage._optionalNestedEnum ?? .unspecified}
    set {_uniqueStorage()._optionalNestedEnum = newValue}
  }
  /// Returns true if `optionalNestedEnum` has been explicitly set.
  var hasOptionalNestedEnum: Bool {return _storage._optionalNestedEnum != nil}
  /// Clears the value of `optionalNestedEnum`. Subsequent reads from it will return its default value.
  mutating func clearOptionalNestedEnum() {_uniqueStorage()._optionalNestedEnum = nil}

  /// Add some non-optional fields to verify we can mix them.
  var singularInt32: Int32 {
    get {return _storage._singularInt32}
    set {_uniqueStorage()._singularInt32 = newValue}
  }

  var singularInt64: Int64 {
    get {return _storage._singularInt64}
    set {_uniqueStorage()._singularInt64 = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum NestedEnum: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case unspecified // = 0
    case foo // = 1
    case bar // = 2
    case baz // = 3

    /// Intentionally negative.
    case neg // = -1
    case UNRECOGNIZED(Int)

    init() {
      self = .unspecified
    }

    init?(rawValue: Int) {
      switch rawValue {
      case -1: self = .neg
      case 0: self = .unspecified
      case 1: self = .foo
      case 2: self = .bar
      case 3: self = .baz
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .neg: return -1
      case .unspecified: return 0
      case .foo: return 1
      case .bar: return 2
      case .baz: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

    // The compiler won't synthesize support with the UNRECOGNIZED case.
    static let allCases: [SwiftProtoTesting_TestProto3Optional.NestedEnum] = [
      .unspecified,
      .foo,
      .bar,
      .baz,
      .neg,
    ]

  }

  struct NestedMessage {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The field name "b" fails to compile in proto1 because it conflicts with
    /// a local variable named "b" in one of the generated methods.  Doh.
    /// This file needs to compile in proto1 to test backwards-compatibility.
    var bb: Int32 {
      get {return _bb ?? 0}
      set {_bb = newValue}
    }
    /// Returns true if `bb` has been explicitly set.
    var hasBb: Bool {return self._bb != nil}
    /// Clears the value of `bb`. Subsequent reads from it will return its default value.
    mutating func clearBb() {self._bb = nil}

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _bb: Int32? = nil
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=5.5) && canImport(_Concurrency)
extension SwiftProtoTesting_TestProto3Optional: @unchecked Sendable {}
extension SwiftProtoTesting_TestProto3Optional.NestedMessage: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "swift_proto_testing"

extension SwiftProtoTesting_TestProto3Optional: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestProto3Optional"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "optional_int32"),
    2: .standard(proto: "optional_int64"),
    3: .standard(proto: "optional_uint32"),
    4: .standard(proto: "optional_uint64"),
    5: .standard(proto: "optional_sint32"),
    6: .standard(proto: "optional_sint64"),
    7: .standard(proto: "optional_fixed32"),
    8: .standard(proto: "optional_fixed64"),
    9: .standard(proto: "optional_sfixed32"),
    10: .standard(proto: "optional_sfixed64"),
    11: .standard(proto: "optional_float"),
    12: .standard(proto: "optional_double"),
    13: .standard(proto: "optional_bool"),
    14: .standard(proto: "optional_string"),
    15: .standard(proto: "optional_bytes"),
    16: .standard(proto: "optional_cord"),
    18: .standard(proto: "optional_nested_message"),
    19: .standard(proto: "lazy_nested_message"),
    21: .standard(proto: "optional_nested_enum"),
    22: .standard(proto: "singular_int32"),
    23: .standard(proto: "singular_int64"),
  ]

  fileprivate class _StorageClass {
    var _optionalInt32: Int32? = nil
    var _optionalInt64: Int64? = nil
    var _optionalUint32: UInt32? = nil
    var _optionalUint64: UInt64? = nil
    var _optionalSint32: Int32? = nil
    var _optionalSint64: Int64? = nil
    var _optionalFixed32: UInt32? = nil
    var _optionalFixed64: UInt64? = nil
    var _optionalSfixed32: Int32? = nil
    var _optionalSfixed64: Int64? = nil
    var _optionalFloat: Float? = nil
    var _optionalDouble: Double? = nil
    var _optionalBool: Bool? = nil
    var _optionalString: String? = nil
    var _optionalBytes: Data? = nil
    var _optionalCord: String? = nil
    var _optionalNestedMessage: SwiftProtoTesting_TestProto3Optional.NestedMessage? = nil
    var _lazyNestedMessage: SwiftProtoTesting_TestProto3Optional.NestedMessage? = nil
    var _optionalNestedEnum: SwiftProtoTesting_TestProto3Optional.NestedEnum? = nil
    var _singularInt32: Int32 = 0
    var _singularInt64: Int64 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _optionalInt32 = source._optionalInt32
      _optionalInt64 = source._optionalInt64
      _optionalUint32 = source._optionalUint32
      _optionalUint64 = source._optionalUint64
      _optionalSint32 = source._optionalSint32
      _optionalSint64 = source._optionalSint64
      _optionalFixed32 = source._optionalFixed32
      _optionalFixed64 = source._optionalFixed64
      _optionalSfixed32 = source._optionalSfixed32
      _optionalSfixed64 = source._optionalSfixed64
      _optionalFloat = source._optionalFloat
      _optionalDouble = source._optionalDouble
      _optionalBool = source._optionalBool
      _optionalString = source._optionalString
      _optionalBytes = source._optionalBytes
      _optionalCord = source._optionalCord
      _optionalNestedMessage = source._optionalNestedMessage
      _lazyNestedMessage = source._lazyNestedMessage
      _optionalNestedEnum = source._optionalNestedEnum
      _singularInt32 = source._singularInt32
      _singularInt64 = source._singularInt64
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularInt32Field(value: &_storage._optionalInt32) }()
        case 2: try { try decoder.decodeSingularInt64Field(value: &_storage._optionalInt64) }()
        case 3: try { try decoder.decodeSingularUInt32Field(value: &_storage._optionalUint32) }()
        case 4: try { try decoder.decodeSingularUInt64Field(value: &_storage._optionalUint64) }()
        case 5: try { try decoder.decodeSingularSInt32Field(value: &_storage._optionalSint32) }()
        case 6: try { try decoder.decodeSingularSInt64Field(value: &_storage._optionalSint64) }()
        case 7: try { try decoder.decodeSingularFixed32Field(value: &_storage._optionalFixed32) }()
        case 8: try { try decoder.decodeSingularFixed64Field(value: &_storage._optionalFixed64) }()
        case 9: try { try decoder.decodeSingularSFixed32Field(value: &_storage._optionalSfixed32) }()
        case 10: try { try decoder.decodeSingularSFixed64Field(value: &_storage._optionalSfixed64) }()
        case 11: try { try decoder.decodeSingularFloatField(value: &_storage._optionalFloat) }()
        case 12: try { try decoder.decodeSingularDoubleField(value: &_storage._optionalDouble) }()
        case 13: try { try decoder.decodeSingularBoolField(value: &_storage._optionalBool) }()
        case 14: try { try decoder.decodeSingularStringField(value: &_storage._optionalString) }()
        case 15: try { try decoder.decodeSingularBytesField(value: &_storage._optionalBytes) }()
        case 16: try { try decoder.decodeSingularStringField(value: &_storage._optionalCord) }()
        case 18: try { try decoder.decodeSingularMessageField(value: &_storage._optionalNestedMessage) }()
        case 19: try { try decoder.decodeSingularMessageField(value: &_storage._lazyNestedMessage) }()
        case 21: try { try decoder.decodeSingularEnumField(value: &_storage._optionalNestedEnum) }()
        case 22: try { try decoder.decodeSingularInt32Field(value: &_storage._singularInt32) }()
        case 23: try { try decoder.decodeSingularInt64Field(value: &_storage._singularInt64) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      try { if let v = _storage._optionalInt32 {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
      } }()
      try { if let v = _storage._optionalInt64 {
        try visitor.visitSingularInt64Field(value: v, fieldNumber: 2)
      } }()
      try { if let v = _storage._optionalUint32 {
        try visitor.visitSingularUInt32Field(value: v, fieldNumber: 3)
      } }()
      try { if let v = _storage._optionalUint64 {
        try visitor.visitSingularUInt64Field(value: v, fieldNumber: 4)
      } }()
      try { if let v = _storage._optionalSint32 {
        try visitor.visitSingularSInt32Field(value: v, fieldNumber: 5)
      } }()
      try { if let v = _storage._optionalSint64 {
        try visitor.visitSingularSInt64Field(value: v, fieldNumber: 6)
      } }()
      try { if let v = _storage._optionalFixed32 {
        try visitor.visitSingularFixed32Field(value: v, fieldNumber: 7)
      } }()
      try { if let v = _storage._optionalFixed64 {
        try visitor.visitSingularFixed64Field(value: v, fieldNumber: 8)
      } }()
      try { if let v = _storage._optionalSfixed32 {
        try visitor.visitSingularSFixed32Field(value: v, fieldNumber: 9)
      } }()
      try { if let v = _storage._optionalSfixed64 {
        try visitor.visitSingularSFixed64Field(value: v, fieldNumber: 10)
      } }()
      try { if let v = _storage._optionalFloat {
        try visitor.visitSingularFloatField(value: v, fieldNumber: 11)
      } }()
      try { if let v = _storage._optionalDouble {
        try visitor.visitSingularDoubleField(value: v, fieldNumber: 12)
      } }()
      try { if let v = _storage._optionalBool {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 13)
      } }()
      try { if let v = _storage._optionalString {
        try visitor.visitSingularStringField(value: v, fieldNumber: 14)
      } }()
      try { if let v = _storage._optionalBytes {
        try visitor.visitSingularBytesField(value: v, fieldNumber: 15)
      } }()
      try { if let v = _storage._optionalCord {
        try visitor.visitSingularStringField(value: v, fieldNumber: 16)
      } }()
      try { if let v = _storage._optionalNestedMessage {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 18)
      } }()
      try { if let v = _storage._lazyNestedMessage {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 19)
      } }()
      try { if let v = _storage._optionalNestedEnum {
        try visitor.visitSingularEnumField(value: v, fieldNumber: 21)
      } }()
      if _storage._singularInt32 != 0 {
        try visitor.visitSingularInt32Field(value: _storage._singularInt32, fieldNumber: 22)
      }
      if _storage._singularInt64 != 0 {
        try visitor.visitSingularInt64Field(value: _storage._singularInt64, fieldNumber: 23)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SwiftProtoTesting_TestProto3Optional, rhs: SwiftProtoTesting_TestProto3Optional) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._optionalInt32 != rhs_storage._optionalInt32 {return false}
        if _storage._optionalInt64 != rhs_storage._optionalInt64 {return false}
        if _storage._optionalUint32 != rhs_storage._optionalUint32 {return false}
        if _storage._optionalUint64 != rhs_storage._optionalUint64 {return false}
        if _storage._optionalSint32 != rhs_storage._optionalSint32 {return false}
        if _storage._optionalSint64 != rhs_storage._optionalSint64 {return false}
        if _storage._optionalFixed32 != rhs_storage._optionalFixed32 {return false}
        if _storage._optionalFixed64 != rhs_storage._optionalFixed64 {return false}
        if _storage._optionalSfixed32 != rhs_storage._optionalSfixed32 {return false}
        if _storage._optionalSfixed64 != rhs_storage._optionalSfixed64 {return false}
        if _storage._optionalFloat != rhs_storage._optionalFloat {return false}
        if _storage._optionalDouble != rhs_storage._optionalDouble {return false}
        if _storage._optionalBool != rhs_storage._optionalBool {return false}
        if _storage._optionalString != rhs_storage._optionalString {return false}
        if _storage._optionalBytes != rhs_storage._optionalBytes {return false}
        if _storage._optionalCord != rhs_storage._optionalCord {return false}
        if _storage._optionalNestedMessage != rhs_storage._optionalNestedMessage {return false}
        if _storage._lazyNestedMessage != rhs_storage._lazyNestedMessage {return false}
        if _storage._optionalNestedEnum != rhs_storage._optionalNestedEnum {return false}
        if _storage._singularInt32 != rhs_storage._singularInt32 {return false}
        if _storage._singularInt64 != rhs_storage._singularInt64 {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SwiftProtoTesting_TestProto3Optional.NestedEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    -1: .same(proto: "NEG"),
    0: .same(proto: "UNSPECIFIED"),
    1: .same(proto: "FOO"),
    2: .same(proto: "BAR"),
    3: .same(proto: "BAZ"),
  ]
}

extension SwiftProtoTesting_TestProto3Optional.NestedMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = SwiftProtoTesting_TestProto3Optional.protoMessageName + ".NestedMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "bb"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self._bb) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._bb {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SwiftProtoTesting_TestProto3Optional.NestedMessage, rhs: SwiftProtoTesting_TestProto3Optional.NestedMessage) -> Bool {
    if lhs._bb != rhs._bb {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
