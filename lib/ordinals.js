"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.SatResponse = exports.SatRequest = exports.SatRangesResponse = exports.SatRangesRequest = exports.SatRanges = exports.SatRange = exports.OutPoint = void 0;
const runtime_1 = require("@protobuf-ts/runtime");
const runtime_2 = require("@protobuf-ts/runtime");
const runtime_3 = require("@protobuf-ts/runtime");
const runtime_4 = require("@protobuf-ts/runtime");
// @generated message type with reflection information, may provide speed optimized methods
class OutPoint$Type extends runtime_4.MessageType {
    constructor() {
        super("ordinals.OutPoint", [
            { no: 1, name: "hash", kind: "scalar", T: 12 /*ScalarType.BYTES*/ },
            { no: 2, name: "vout", kind: "scalar", T: 13 /*ScalarType.UINT32*/ }
        ]);
    }
    create(value) {
        const message = globalThis.Object.create((this.messagePrototype));
        message.hash = new Uint8Array(0);
        message.vout = 0;
        if (value !== undefined)
            (0, runtime_3.reflectionMergePartial)(this, message, value);
        return message;
    }
    internalBinaryRead(reader, length, options, target) {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* bytes hash */ 1:
                    message.hash = reader.bytes();
                    break;
                case /* uint32 vout */ 2:
                    message.vout = reader.uint32();
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? runtime_2.UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message, writer, options) {
        /* bytes hash = 1; */
        if (message.hash.length)
            writer.tag(1, runtime_1.WireType.LengthDelimited).bytes(message.hash);
        /* uint32 vout = 2; */
        if (message.vout !== 0)
            writer.tag(2, runtime_1.WireType.Varint).uint32(message.vout);
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? runtime_2.UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message ordinals.OutPoint
 */
exports.OutPoint = new OutPoint$Type();
// @generated message type with reflection information, may provide speed optimized methods
class SatRange$Type extends runtime_4.MessageType {
    constructor() {
        super("ordinals.SatRange", [
            { no: 1, name: "start", kind: "scalar", T: 4 /*ScalarType.UINT64*/, L: 0 /*LongType.BIGINT*/ },
            { no: 2, name: "distance", kind: "scalar", T: 4 /*ScalarType.UINT64*/, L: 0 /*LongType.BIGINT*/ }
        ]);
    }
    create(value) {
        const message = globalThis.Object.create((this.messagePrototype));
        message.start = 0n;
        message.distance = 0n;
        if (value !== undefined)
            (0, runtime_3.reflectionMergePartial)(this, message, value);
        return message;
    }
    internalBinaryRead(reader, length, options, target) {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* uint64 start */ 1:
                    message.start = reader.uint64().toBigInt();
                    break;
                case /* uint64 distance */ 2:
                    message.distance = reader.uint64().toBigInt();
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? runtime_2.UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message, writer, options) {
        /* uint64 start = 1; */
        if (message.start !== 0n)
            writer.tag(1, runtime_1.WireType.Varint).uint64(message.start);
        /* uint64 distance = 2; */
        if (message.distance !== 0n)
            writer.tag(2, runtime_1.WireType.Varint).uint64(message.distance);
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? runtime_2.UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message ordinals.SatRange
 */
exports.SatRange = new SatRange$Type();
// @generated message type with reflection information, may provide speed optimized methods
class SatRanges$Type extends runtime_4.MessageType {
    constructor() {
        super("ordinals.SatRanges", [
            { no: 1, name: "ranges", kind: "message", repeat: 1 /*RepeatType.PACKED*/, T: () => exports.SatRange }
        ]);
    }
    create(value) {
        const message = globalThis.Object.create((this.messagePrototype));
        message.ranges = [];
        if (value !== undefined)
            (0, runtime_3.reflectionMergePartial)(this, message, value);
        return message;
    }
    internalBinaryRead(reader, length, options, target) {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* repeated ordinals.SatRange ranges */ 1:
                    message.ranges.push(exports.SatRange.internalBinaryRead(reader, reader.uint32(), options));
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? runtime_2.UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message, writer, options) {
        /* repeated ordinals.SatRange ranges = 1; */
        for (let i = 0; i < message.ranges.length; i++)
            exports.SatRange.internalBinaryWrite(message.ranges[i], writer.tag(1, runtime_1.WireType.LengthDelimited).fork(), options).join();
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? runtime_2.UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message ordinals.SatRanges
 */
exports.SatRanges = new SatRanges$Type();
// @generated message type with reflection information, may provide speed optimized methods
class SatRangesRequest$Type extends runtime_4.MessageType {
    constructor() {
        super("ordinals.SatRangesRequest", [
            { no: 1, name: "outpoint", kind: "message", T: () => exports.OutPoint }
        ]);
    }
    create(value) {
        const message = globalThis.Object.create((this.messagePrototype));
        if (value !== undefined)
            (0, runtime_3.reflectionMergePartial)(this, message, value);
        return message;
    }
    internalBinaryRead(reader, length, options, target) {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* ordinals.OutPoint outpoint */ 1:
                    message.outpoint = exports.OutPoint.internalBinaryRead(reader, reader.uint32(), options, message.outpoint);
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? runtime_2.UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message, writer, options) {
        /* ordinals.OutPoint outpoint = 1; */
        if (message.outpoint)
            exports.OutPoint.internalBinaryWrite(message.outpoint, writer.tag(1, runtime_1.WireType.LengthDelimited).fork(), options).join();
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? runtime_2.UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message ordinals.SatRangesRequest
 */
exports.SatRangesRequest = new SatRangesRequest$Type();
// @generated message type with reflection information, may provide speed optimized methods
class SatRangesResponse$Type extends runtime_4.MessageType {
    constructor() {
        super("ordinals.SatRangesResponse", [
            { no: 1, name: "satranges", kind: "message", T: () => exports.SatRanges }
        ]);
    }
    create(value) {
        const message = globalThis.Object.create((this.messagePrototype));
        if (value !== undefined)
            (0, runtime_3.reflectionMergePartial)(this, message, value);
        return message;
    }
    internalBinaryRead(reader, length, options, target) {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* ordinals.SatRanges satranges */ 1:
                    message.satranges = exports.SatRanges.internalBinaryRead(reader, reader.uint32(), options, message.satranges);
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? runtime_2.UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message, writer, options) {
        /* ordinals.SatRanges satranges = 1; */
        if (message.satranges)
            exports.SatRanges.internalBinaryWrite(message.satranges, writer.tag(1, runtime_1.WireType.LengthDelimited).fork(), options).join();
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? runtime_2.UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message ordinals.SatRangesResponse
 */
exports.SatRangesResponse = new SatRangesResponse$Type();
// @generated message type with reflection information, may provide speed optimized methods
class SatRequest$Type extends runtime_4.MessageType {
    constructor() {
        super("ordinals.SatRequest", [
            { no: 1, name: "sat", kind: "scalar", T: 4 /*ScalarType.UINT64*/, L: 0 /*LongType.BIGINT*/ }
        ]);
    }
    create(value) {
        const message = globalThis.Object.create((this.messagePrototype));
        message.sat = 0n;
        if (value !== undefined)
            (0, runtime_3.reflectionMergePartial)(this, message, value);
        return message;
    }
    internalBinaryRead(reader, length, options, target) {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* uint64 sat */ 1:
                    message.sat = reader.uint64().toBigInt();
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? runtime_2.UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message, writer, options) {
        /* uint64 sat = 1; */
        if (message.sat !== 0n)
            writer.tag(1, runtime_1.WireType.Varint).uint64(message.sat);
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? runtime_2.UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message ordinals.SatRequest
 */
exports.SatRequest = new SatRequest$Type();
// @generated message type with reflection information, may provide speed optimized methods
class SatResponse$Type extends runtime_4.MessageType {
    constructor() {
        super("ordinals.SatResponse", [
            { no: 1, name: "pointer", kind: "scalar", T: 4 /*ScalarType.UINT64*/, L: 0 /*LongType.BIGINT*/ },
            { no: 2, name: "satrange", kind: "message", T: () => exports.SatRange },
            { no: 3, name: "outpoint", kind: "message", T: () => exports.OutPoint },
            { no: 4, name: "satranges", kind: "message", T: () => exports.SatRanges }
        ]);
    }
    create(value) {
        const message = globalThis.Object.create((this.messagePrototype));
        message.pointer = 0n;
        if (value !== undefined)
            (0, runtime_3.reflectionMergePartial)(this, message, value);
        return message;
    }
    internalBinaryRead(reader, length, options, target) {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* uint64 pointer */ 1:
                    message.pointer = reader.uint64().toBigInt();
                    break;
                case /* ordinals.SatRange satrange */ 2:
                    message.satrange = exports.SatRange.internalBinaryRead(reader, reader.uint32(), options, message.satrange);
                    break;
                case /* ordinals.OutPoint outpoint */ 3:
                    message.outpoint = exports.OutPoint.internalBinaryRead(reader, reader.uint32(), options, message.outpoint);
                    break;
                case /* ordinals.SatRanges satranges */ 4:
                    message.satranges = exports.SatRanges.internalBinaryRead(reader, reader.uint32(), options, message.satranges);
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? runtime_2.UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message, writer, options) {
        /* uint64 pointer = 1; */
        if (message.pointer !== 0n)
            writer.tag(1, runtime_1.WireType.Varint).uint64(message.pointer);
        /* ordinals.SatRange satrange = 2; */
        if (message.satrange)
            exports.SatRange.internalBinaryWrite(message.satrange, writer.tag(2, runtime_1.WireType.LengthDelimited).fork(), options).join();
        /* ordinals.OutPoint outpoint = 3; */
        if (message.outpoint)
            exports.OutPoint.internalBinaryWrite(message.outpoint, writer.tag(3, runtime_1.WireType.LengthDelimited).fork(), options).join();
        /* ordinals.SatRanges satranges = 4; */
        if (message.satranges)
            exports.SatRanges.internalBinaryWrite(message.satranges, writer.tag(4, runtime_1.WireType.LengthDelimited).fork(), options).join();
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? runtime_2.UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message ordinals.SatResponse
 */
exports.SatResponse = new SatResponse$Type();
//# sourceMappingURL=ordinals.js.map