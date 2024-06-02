import type { BinaryWriteOptions } from "@protobuf-ts/runtime";
import type { IBinaryWriter } from "@protobuf-ts/runtime";
import type { BinaryReadOptions } from "@protobuf-ts/runtime";
import type { IBinaryReader } from "@protobuf-ts/runtime";
import type { PartialMessage } from "@protobuf-ts/runtime";
import { MessageType } from "@protobuf-ts/runtime";
/**
 * @generated from protobuf message ordinals.OutPoint
 */
export interface OutPoint {
    /**
     * @generated from protobuf field: bytes hash = 1;
     */
    hash: Uint8Array;
    /**
     * @generated from protobuf field: uint32 vout = 2;
     */
    vout: number;
}
/**
 * @generated from protobuf message ordinals.SatRange
 */
export interface SatRange {
    /**
     * @generated from protobuf field: uint64 start = 1;
     */
    start: bigint;
    /**
     * @generated from protobuf field: uint64 distance = 2;
     */
    distance: bigint;
}
/**
 * @generated from protobuf message ordinals.SatRanges
 */
export interface SatRanges {
    /**
     * @generated from protobuf field: repeated ordinals.SatRange ranges = 1;
     */
    ranges: SatRange[];
}
/**
 * @generated from protobuf message ordinals.SatRangesRequest
 */
export interface SatRangesRequest {
    /**
     * @generated from protobuf field: ordinals.OutPoint outpoint = 1;
     */
    outpoint?: OutPoint;
}
/**
 * @generated from protobuf message ordinals.SatRangesResponse
 */
export interface SatRangesResponse {
    /**
     * @generated from protobuf field: ordinals.SatRanges satranges = 1;
     */
    satranges?: SatRanges;
}
declare class OutPoint$Type extends MessageType<OutPoint> {
    constructor();
    create(value?: PartialMessage<OutPoint>): OutPoint;
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: OutPoint): OutPoint;
    internalBinaryWrite(message: OutPoint, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter;
}
/**
 * @generated MessageType for protobuf message ordinals.OutPoint
 */
export declare const OutPoint: OutPoint$Type;
declare class SatRange$Type extends MessageType<SatRange> {
    constructor();
    create(value?: PartialMessage<SatRange>): SatRange;
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: SatRange): SatRange;
    internalBinaryWrite(message: SatRange, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter;
}
/**
 * @generated MessageType for protobuf message ordinals.SatRange
 */
export declare const SatRange: SatRange$Type;
declare class SatRanges$Type extends MessageType<SatRanges> {
    constructor();
    create(value?: PartialMessage<SatRanges>): SatRanges;
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: SatRanges): SatRanges;
    internalBinaryWrite(message: SatRanges, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter;
}
/**
 * @generated MessageType for protobuf message ordinals.SatRanges
 */
export declare const SatRanges: SatRanges$Type;
declare class SatRangesRequest$Type extends MessageType<SatRangesRequest> {
    constructor();
    create(value?: PartialMessage<SatRangesRequest>): SatRangesRequest;
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: SatRangesRequest): SatRangesRequest;
    internalBinaryWrite(message: SatRangesRequest, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter;
}
/**
 * @generated MessageType for protobuf message ordinals.SatRangesRequest
 */
export declare const SatRangesRequest: SatRangesRequest$Type;
declare class SatRangesResponse$Type extends MessageType<SatRangesResponse> {
    constructor();
    create(value?: PartialMessage<SatRangesResponse>): SatRangesResponse;
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: SatRangesResponse): SatRangesResponse;
    internalBinaryWrite(message: SatRangesResponse, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter;
}
/**
 * @generated MessageType for protobuf message ordinals.SatRangesResponse
 */
export declare const SatRangesResponse: SatRangesResponse$Type;
export {};
