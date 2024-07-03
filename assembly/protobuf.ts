namespace __proto {
  export const MAX_POS = 0x1000;

  /**
   * Decoder implements protobuf message decode interface.
   *
   * Useful references:
   *
   * Protocol Buffer encoding: https://developers.google.com/protocol-buffers/docs/encoding
   * LEB128 encoding AKA varint 128 encoding: https://en.wikipedia.org/wiki/LEB128
   * ZigZag encoding/decoding (s32/s64): https://gist.github.com/mfuerstenau/ba870a29e16536fdbaba
   */
  export class Decoder {
    public view: DataView;
    public pos: i32;

    constructor(view: DataView) {
      this.view = view;
      this.pos = 0;
    }

    /**
     * Returns true if current reader has reached the buffer end
     * @returns True if current reader has reached the buffer end
     */
    @inline
    eof(): bool {
      return this.pos >= this.view.byteLength;
    }

    /**
     * Returns current buffer length in bytes
     * @returns Length in bytes
     */
    @inline
    get byteLength(): i32 {
      return this.view.byteLength;
    }

    /**
     * An alias method to fetch tag from the reader. Supposed to return tuple of [field number, wire_type].
     * TODO: Replace with return tuple when tuples become implemented in AS.
     * @returns Message tag value
     */
    @inline
    tag(): u32 {
      return this.uint32();
    }

    /**
     * Returns byte at offset, alias for getUint8
     * @param byteOffset Offset
     * @returns u8
     */
    @inline
    private u8at(byteOffset: i32): u8 {
      return this.view.getUint8(byteOffset);
    }

    /**
     * Reads and returns varint number (128 + 10 bits max) from a current position.
     * @returns Returns varint
     */
    varint(): u64 {
      let value: u64;

      // u32
      value = (u64(u8(this.u8at(this.pos))) & 127) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 7)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 14)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 21)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      // u32 remainder or u64 byte
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 28)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      // u64
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 35)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value =
        (value | ((u64(u8(this.u8at(this.pos))) & 127) << 42)) /* 42!!! */ >>>
        0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 49)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 28)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      // u64 remainder
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 35)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;

      if (this.pos > this.byteLength) {
        this.throwOutOfRange();
      }

      return value;
    }

    @inline
    int32(): i32 {
      return i32(this.varint());
    }

    @inline
    int64(): i64 {
      return i32(this.varint());
    }

    @inline
    uint32(): u32 {
      return u32(this.varint());
    }

    @inline
    uint64(): u64 {
      return u64(this.varint());
    }

    @inline
    sint32(): i32 {
      const n: u64 = this.varint();
      return i32((n >>> 1) ^ -(n & 1));
    }

    @inline
    sint64(): i64 {
      const n: u64 = this.varint();
      return i64((n >>> 1) ^ -(n & 1));
    }

    fixed32(): u32 {
      this.pos += 4;
      if (this.pos > this.byteLength) {
        this.throwOutOfRange();
      }

      // u32(u8) ensures that u8(-1) becomes u32(4294967295) instead of u8(255)
      return (
        u32(u8(this.u8at(this.pos - 4))) |
        (u32(u8(this.u8at(this.pos - 3))) << 8) |
        (u32(u8(this.u8at(this.pos - 2))) << 16) |
        (u32(u8(this.u8at(this.pos - 1))) << 24)
      );
    }

    @inline
    sfixed32(): i32 {
      return i32(this.fixed32());
    }

    fixed64(): u64 {
      this.pos += 8;
      if (this.pos > this.byteLength) {
        this.throwOutOfRange();
      }

      return (
        u64(u8(this.u8at(this.pos - 8))) |
        (u64(u8(this.u8at(this.pos - 7))) << 8) |
        (u64(u8(this.u8at(this.pos - 6))) << 16) |
        (u64(u8(this.u8at(this.pos - 5))) << 24) |
        (u64(u8(this.u8at(this.pos - 4))) << 32) |
        (u64(u8(this.u8at(this.pos - 3))) << 40) |
        (u64(u8(this.u8at(this.pos - 2))) << 48) |
        (u64(u8(this.u8at(this.pos - 1))) << 56)
      );
    }

    @inline
    sfixed64(): i64 {
      return i64(this.fixed64());
    }

    @inline
    float(): f32 {
      return f32.reinterpret_i32(this.fixed32());
    }

    @inline
    double(): f64 {
      return f64.reinterpret_i64(this.fixed64());
    }

    @inline
    bool(): boolean {
      return this.uint32() > 0;
    }

    /**
     * Reads and returns UTF8 string.
     * @returns String
     */
    string(): string {
      const length = this.uint32();
      if (this.pos + length > this.byteLength) {
        this.throwOutOfRange();
      }

      const p = this.pos + this.view.byteOffset;
      const value = String.UTF8.decode(this.view.buffer.slice(p, p + length));
      this.pos += length;
      return value;
    }

    /**
     * Reads and returns bytes array.
     * @returns Array<u8> of bytes
     */
    bytes(): Array<u8> {
      const len = this.uint32();
      if (this.pos + len > this.byteLength) {
        this.throwOutOfRange();
      }

      const a = new Array<u8>(len);
      for (let i: u32 = 0; i < len; i++) {
        a[i] = u8(this.u8at(this.pos++));
      }

      return a;
    }

    /**
     * Skips a message field if it can'be recognized by an object's decode() method
     * @param wireType Current wire type
     */
    skipType(wireType: u32): void {
      switch (wireType) {
        // int32, int64, uint32, uint64, sint32, sint64, bool, enum: varint, variable length
        case 0:
          this.varint(); // Just read a varint
          break;
        // fixed64, sfixed64, double: 8 bytes always
        case 1:
          this.skip(8);
          break;
        // length-delimited; length is determined by varint32; skip length bytes;
        case 2:
          this.skip(this.uint32());
          break;
        // tart group: skip till the end of the group, then skip group end marker
        case 3:
          while ((wireType = this.uint32() & 7) !== 4) {
            this.skipType(wireType);
          }
          break;
        // fixed32, sfixed32, float: 4 bytes always
        case 5:
          this.skip(4);
          break;

        // Something went beyond our capability to understand
        default:
          throw new Error(
            `Invalid wire type ${wireType} at offset ${this.pos}`
          );
      }
    }

    /**
     * Fast-forwards cursor by length with boundary check
     * @param length Byte length
     */
    skip(length: u32): void {
      if (this.pos + length > this.byteLength) {
        this.throwOutOfRange();
      }
      this.pos += length;
    }

    /**
     * OutOfRange check. Throws an exception if current position exceeds current buffer range
     */
    @inline
    private throwOutOfRange(): void {
      throw new Error(`Decoder position ${this.pos} is out of range!`);
    }
  }

  class SafeDecoder extends Decoder {
    public _invalid: boolean;
    invalid(): boolean {
      if (this._invalid) return true;
      if (this.pos > MAX_POS) {
        this._invalid = true;
        return true;
      }
      return false;
    }
    string(): string {
      if (this.invalid()) return "";
      const length = this.uint32();
      if (this.pos + length > this.byteLength) {
        this._invalid = true;
        return "";
      }
      const p = this.pos + this.view.byteOffset;
      const value = String.UTF8.decode(this.view.buffer.slice(p, p + length));
      this.pos += length;
      return value;
    }
    @inline
    sfixed64(): i64 {
      if (this.invalid()) return 0;
      return i64(this.fixed64());
    }

    @inline
    float(): f32 {
      if (this.invalid()) return 0;
      return f32.reinterpret_i32(this.fixed32());
    }

    @inline
    double(): f64 {
      if (this.invalid()) return 0;
      return f64.reinterpret_i64(this.fixed64());
    }

    @inline
    bool(): boolean {
      if (this.invalid()) return false;
      return this.uint32() > 0;
    }
    fixed64(): u64 {
      if (this.invalid()) return 0;
      this.pos += 8;
      if (this.pos > this.byteLength || this.pos > MAX_POS) {
        this._invalid = true;
        return <u64>0;
      }

      return (
        u64(u8(this.u8at(this.pos - 8))) |
        (u64(u8(this.u8at(this.pos - 7))) << 8) |
        (u64(u8(this.u8at(this.pos - 6))) << 16) |
        (u64(u8(this.u8at(this.pos - 5))) << 24) |
        (u64(u8(this.u8at(this.pos - 4))) << 32) |
        (u64(u8(this.u8at(this.pos - 3))) << 40) |
        (u64(u8(this.u8at(this.pos - 2))) << 48) |
        (u64(u8(this.u8at(this.pos - 1))) << 56)
      );
    }
    eof(): boolean {
      if (this.invalid()) return true;
      return super.eof();
    }
    varint(): u64 {
      if (this.invalid()) return 0;
      let value: u64;

      // u32
      value = (u64(u8(this.u8at(this.pos))) & 127) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 7)) >>> 0;
      if (this.pos + 1 > MAX_POS) {
        this._invalid = true;
        return 0;
      }
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 14)) >>> 0;
      if (this.pos + 1 > MAX_POS) {
        this._invalid = true;
        return 0;
      }
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 21)) >>> 0;
      if (this.pos + 1 > MAX_POS) {
        this._invalid = true;
        return 0;
      }
      if (u8(this.u8at(this.pos++)) < 128) return value;
      // u32 remainder or u64 byte
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 28)) >>> 0;
      if (this.pos + 1 > MAX_POS) {
        this._invalid = true;
        return 0;
      }
      if (u8(this.u8at(this.pos++)) < 128) return value;
      // u64
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 35)) >>> 0;
      if (this.pos + 1 > MAX_POS) {
        this._invalid = true;
        return 0;
      }
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value =
        (value | ((u64(u8(this.u8at(this.pos))) & 127) << 42)) /* 42!!! */ >>>
        0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 49)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 28)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      // u64 remainder
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 35)) >>> 0;
      if (this.pos + 1 > MAX_POS) {
        this._invalid = true;
        return 0;
      }
      if (u8(this.u8at(this.pos++)) < 128) return value;

      if (this.pos > this.byteLength || this.pos > MAX_POS) {
        this._invalid = true;
        return 0;
      }

      return value;
    }
    fixed32(): u32 {
      if (this.invalid()) return 0;
      this.pos += 4;
      if (this.pos > this.byteLength || this.pos > MAX_POS) {
        this._invalid = true;
        return <u32>0;
      }

      // u32(u8) ensures that u8(-1) becomes u32(4294967295) instead of u8(255)
      return (
        u32(u8(this.u8at(this.pos - 4))) |
        (u32(u8(this.u8at(this.pos - 3))) << 8) |
        (u32(u8(this.u8at(this.pos - 2))) << 16) |
        (u32(u8(this.u8at(this.pos - 1))) << 24)
      );
    }
    bytes(): Array<u8> {
      if (this.invalid()) return new Array<u8>(0);
      const len = this.uint32();
      if (this.pos + len > this.byteLength || this.pos + len > MAX_POS) {
        this._invalid = true;
        return new Array<u8>(0);
      }
      const a = new Array<u8>(len);
      for (let i: u32 = 0; i < len; i++) {
        a[i] = u8(this.u8at(this.pos++));
      }

      return a;
    }
    skipType(wireType: u32): void {
      if (this.invalid()) return;
      switch (wireType) {
        // int32, int64, uint32, uint64, sint32, sint64, bool, enum: varint, variable length
        case 0:
          this.varint(); // Just read a varint
          break;
        // fixed64, sfixed64, double: 8 bytes always
        case 1:
          this.skip(8);
          break;
        // length-delimited; length is determined by varint32; skip length bytes;
        case 2:
          this.skip(this.uint32());
          break;
        // tart group: skip till the end of the group, then skip group end marker
        case 3:
          while ((wireType = this.uint32() & 7) !== 4) {
            this.skipType(wireType);
          }
          break;
        // fixed32, sfixed32, float: 4 bytes always
        case 5:
          this.skip(4);
          break;

        // Something went beyond our capability to understand
        default:
          this._invalid = true;
          break;
      }
    }
    skip(length: u32): void {
      if (this.invalid()) return;
      if (this.pos + length > this.byteLength || this.pos + length > MAX_POS) {
        this._invalid = true;
      }
      this.pos += length;
    }
  }

  /**
   * Encoder implements protobuf message encode interface. This is the simplest not very effective version, which uses
   * Array<u8>.
   *
   * Useful references:
   *
   * Protocol Buffer encoding: https://developers.google.com/protocol-buffers/docs/encoding
   * LEB128 encoding AKA varint 128 encoding: https://en.wikipedia.org/wiki/LEB128
   * ZigZag encoding/decoding (s32/s64): https://gist.github.com/mfuerstenau/ba870a29e16536fdbaba
   */
  export class Encoder {
    public buf: Array<u8>;

    constructor(buf: Array<u8>) {
      this.buf = buf;
    }

    /**
     * Encodes varint at a current position
     * @returns Returns varint
     */
    varint64(value: u64): void {
      let v: u64 = value;

      while (v > 127) {
        this.buf.push(u8((v & 127) | 128));
        v = v >> 7;
      }

      this.buf.push(u8(v));
    }

    @inline
    int32(value: i32): void {
      this.varint64(value);
    }

    @inline
    int64(value: i64): void {
      this.varint64(value);
    }

    @inline
    uint32(value: u32): void {
      this.varint64(value);
    }

    @inline
    uint64(value: u64): void {
      this.varint64(value);
    }

    @inline
    sint32(value: i32): void {
      this.varint64((value << 1) ^ (value >> 31));
    }

    @inline
    sint64(value: i64): void {
      this.varint64((value << 1) ^ (value >> 63));
    }

    @inline
    fixed32(value: u32): void {
      this.buf.push(u8(value & 255));
      this.buf.push(u8((value >> 8) & 255));
      this.buf.push(u8((value >> 16) & 255));
      this.buf.push(u8(value >> 24));
    }

    @inline
    sfixed32(value: i32): void {
      this.fixed32(u32(value));
    }

    @inline
    fixed64(value: u64): void {
      this.buf.push(u8(value & 255));
      this.buf.push(u8((value >> 8) & 255));
      this.buf.push(u8((value >> 16) & 255));
      this.buf.push(u8((value >> 24) & 255));
      this.buf.push(u8((value >> 32) & 255));
      this.buf.push(u8((value >> 40) & 255));
      this.buf.push(u8((value >> 48) & 255));
      this.buf.push(u8(value >> 56));
    }

    @inline
    sfixed64(value: i64): void {
      this.fixed64(u64(value));
    }

    @inline
    float(value: f32): void {
      this.fixed32(u32(i32.reinterpret_f32(value)));
    }

    @inline
    double(value: f64): void {
      this.fixed64(u64(i64.reinterpret_f64(value)));
    }

    @inline
    bool(value: boolean): void {
      this.buf.push(value ? 1 : 0);
    }

    string(value: string): void {
      const utf8string = new DataView(String.UTF8.encode(value));

      for (let i = 0; i < utf8string.byteLength; i++) {
        this.buf.push(utf8string.getUint8(i));
      }
    }

    @inline
    bytes(value: Array<u8>): void {
      for (let i = 0; i < value.length; i++) {
        this.buf.push(value[i]);
      }
    }
  }

  /**
   * Returns byte size required to encode a value of a certain type
   */
  export class Sizer {
    static varint64(value: u64): u32 {
      return value < 128
        ? 1 // 2^7
        : value < 16384
        ? 2 // 2^14
        : value < 2097152
        ? 3 // 2^21
        : value < 268435456
        ? 4 // 2^28
        : value < 34359738368
        ? 5 // 2^35
        : value < 4398046511104
        ? 6 // 2^42
        : value < 562949953421312
        ? 7 // 2^49
        : value < 72057594037927936
        ? 8 // 2^56
        : value < 9223372036854775808
        ? 9 // 2^63
        : 10;
    }

    @inline
    static int32(value: i32): u32 {
      return Sizer.varint64(u64(value));
    }

    @inline
    static int64(value: i64): u32 {
      return Sizer.varint64(u64(value));
    }

    @inline
    static uint32(value: u32): u32 {
      return Sizer.varint64(value);
    }

    @inline
    static uint64(value: u64): u32 {
      return Sizer.varint64(value);
    }

    @inline
    static sint32(value: i32): u32 {
      return Sizer.varint64((value << 1) ^ (value >> 31));
    }

    @inline
    static sint64(value: i64): u32 {
      return Sizer.varint64((value << 1) ^ (value >> 63));
    }

    @inline
    static string(value: string): u32 {
      return value.length;
    }

    @inline
    static bytes(value: Array<u8>): u32 {
      return value.length;
    }
  }
}
export namespace ordinals {
  export class OutPoint {
    public hash: Array<u8> = new Array<u8>();
    public vout: u32;

    // Decodes OutPoint from an ArrayBuffer
    static decode(buf: ArrayBuffer): OutPoint {
      return OutPoint.decodeDataView(new DataView(buf));
    }

    // Decodes OutPoint from a DataView
    static decodeDataView(view: DataView): OutPoint {
      const decoder = new __proto.SafeDecoder(view);
      const obj = new OutPoint();

      while (!decoder.eof()) {
        const tag = decoder.tag();
        const number = tag >>> 3;

        switch (number) {
          case 1: {
            obj.hash = decoder.bytes();
            break;
          }
          case 2: {
            obj.vout = decoder.uint32();
            break;
          }

          default:
            decoder.skipType(tag & 7);
            break;
        }
      }
      if (decoder.invalid()) return changetype<OutPoint>(0);
      return obj;
    } // decode OutPoint

    public size(): u32 {
      let size: u32 = 0;

      size +=
        this.hash.length > 0
          ? 1 + __proto.Sizer.varint64(this.hash.length) + this.hash.length
          : 0;
      size += this.vout == 0 ? 0 : 1 + __proto.Sizer.uint32(this.vout);

      return size;
    }

    // Encodes OutPoint to the ArrayBuffer
    encode(): ArrayBuffer {
      return changetype<ArrayBuffer>(
        StaticArray.fromArray<u8>(this.encodeU8Array())
      );
    }

    // Encodes OutPoint to the Array<u8>
    encodeU8Array(
      encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
      const buf = encoder.buf;

      if (this.hash.length > 0) {
        encoder.uint32(0xa);
        encoder.uint32(this.hash.length);
        encoder.bytes(this.hash);
      }
      if (this.vout != 0) {
        encoder.uint32(0x10);
        encoder.uint32(this.vout);
      }

      return buf;
    } // encode OutPoint
  } // OutPoint

  export class SatRange {
    public start: u64;
    public distance: u64;

    // Decodes SatRange from an ArrayBuffer
    static decode(buf: ArrayBuffer): SatRange {
      return SatRange.decodeDataView(new DataView(buf));
    }

    // Decodes SatRange from a DataView
    static decodeDataView(view: DataView): SatRange {
      const decoder = new __proto.SafeDecoder(view);
      const obj = new SatRange();

      while (!decoder.eof()) {
        const tag = decoder.tag();
        const number = tag >>> 3;

        switch (number) {
          case 1: {
            obj.start = decoder.uint64();
            break;
          }
          case 2: {
            obj.distance = decoder.uint64();
            break;
          }

          default:
            decoder.skipType(tag & 7);
            break;
        }
      }
      if (decoder.invalid()) return changetype<SatRange>(0);
      return obj;
    } // decode SatRange

    public size(): u32 {
      let size: u32 = 0;

      size += this.start == 0 ? 0 : 1 + __proto.Sizer.uint64(this.start);
      size += this.distance == 0 ? 0 : 1 + __proto.Sizer.uint64(this.distance);

      return size;
    }

    // Encodes SatRange to the ArrayBuffer
    encode(): ArrayBuffer {
      return changetype<ArrayBuffer>(
        StaticArray.fromArray<u8>(this.encodeU8Array())
      );
    }

    // Encodes SatRange to the Array<u8>
    encodeU8Array(
      encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
      const buf = encoder.buf;

      if (this.start != 0) {
        encoder.uint32(0x8);
        encoder.uint64(this.start);
      }
      if (this.distance != 0) {
        encoder.uint32(0x10);
        encoder.uint64(this.distance);
      }

      return buf;
    } // encode SatRange
  } // SatRange

  export class SatRanges {
    public ranges: Array<SatRange> = new Array<SatRange>();

    // Decodes SatRanges from an ArrayBuffer
    static decode(buf: ArrayBuffer): SatRanges {
      return SatRanges.decodeDataView(new DataView(buf));
    }

    // Decodes SatRanges from a DataView
    static decodeDataView(view: DataView): SatRanges {
      const decoder = new __proto.SafeDecoder(view);
      const obj = new SatRanges();

      while (!decoder.eof()) {
        const tag = decoder.tag();
        const number = tag >>> 3;

        switch (number) {
          case 1: {
            const length = decoder.uint32();
            obj.ranges.push(
              SatRange.decodeDataView(
                new DataView(
                  decoder.view.buffer,
                  decoder.pos + decoder.view.byteOffset,
                  length
                )
              )
            );
            decoder.skip(length);

            break;
          }

          default:
            decoder.skipType(tag & 7);
            break;
        }
      }
      if (decoder.invalid()) return changetype<SatRanges>(0);
      return obj;
    } // decode SatRanges

    public size(): u32 {
      let size: u32 = 0;

      for (let n: i32 = 0; n < this.ranges.length; n++) {
        const messageSize = this.ranges[n].size();

        if (messageSize > 0) {
          size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
        }
      }

      return size;
    }

    // Encodes SatRanges to the ArrayBuffer
    encode(): ArrayBuffer {
      return changetype<ArrayBuffer>(
        StaticArray.fromArray<u8>(this.encodeU8Array())
      );
    }

    // Encodes SatRanges to the Array<u8>
    encodeU8Array(
      encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
      const buf = encoder.buf;

      for (let n: i32 = 0; n < this.ranges.length; n++) {
        const messageSize = this.ranges[n].size();

        if (messageSize > 0) {
          encoder.uint32(0xa);
          encoder.uint32(messageSize);
          this.ranges[n].encodeU8Array(encoder);
        }
      }

      return buf;
    } // encode SatRanges
  } // SatRanges

  export class SatRangesRequest {
    public outpoint: OutPoint = new OutPoint();

    // Decodes SatRangesRequest from an ArrayBuffer
    static decode(buf: ArrayBuffer): SatRangesRequest {
      return SatRangesRequest.decodeDataView(new DataView(buf));
    }

    // Decodes SatRangesRequest from a DataView
    static decodeDataView(view: DataView): SatRangesRequest {
      const decoder = new __proto.SafeDecoder(view);
      const obj = new SatRangesRequest();

      while (!decoder.eof()) {
        const tag = decoder.tag();
        const number = tag >>> 3;

        switch (number) {
          case 1: {
            const length = decoder.uint32();
            obj.outpoint = OutPoint.decodeDataView(
              new DataView(
                decoder.view.buffer,
                decoder.pos + decoder.view.byteOffset,
                length
              )
            );
            decoder.skip(length);

            break;
          }

          default:
            decoder.skipType(tag & 7);
            break;
        }
      }
      if (decoder.invalid()) return changetype<SatRangesRequest>(0);
      return obj;
    } // decode SatRangesRequest

    public size(): u32 {
      let size: u32 = 0;

      if (this.outpoint != null) {
        const f: OutPoint = this.outpoint as OutPoint;
        const messageSize = f.size();

        if (messageSize > 0) {
          size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
        }
      }

      return size;
    }

    // Encodes SatRangesRequest to the ArrayBuffer
    encode(): ArrayBuffer {
      return changetype<ArrayBuffer>(
        StaticArray.fromArray<u8>(this.encodeU8Array())
      );
    }

    // Encodes SatRangesRequest to the Array<u8>
    encodeU8Array(
      encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
      const buf = encoder.buf;

      if (this.outpoint != null) {
        const f = this.outpoint as OutPoint;

        const messageSize = f.size();

        if (messageSize > 0) {
          encoder.uint32(0xa);
          encoder.uint32(messageSize);
          f.encodeU8Array(encoder);
        }
      }

      return buf;
    } // encode SatRangesRequest
  } // SatRangesRequest

  export class SatRangesResponse {
    public satranges: SatRanges = new SatRanges();

    // Decodes SatRangesResponse from an ArrayBuffer
    static decode(buf: ArrayBuffer): SatRangesResponse {
      return SatRangesResponse.decodeDataView(new DataView(buf));
    }

    // Decodes SatRangesResponse from a DataView
    static decodeDataView(view: DataView): SatRangesResponse {
      const decoder = new __proto.SafeDecoder(view);
      const obj = new SatRangesResponse();

      while (!decoder.eof()) {
        const tag = decoder.tag();
        const number = tag >>> 3;

        switch (number) {
          case 1: {
            const length = decoder.uint32();
            obj.satranges = SatRanges.decodeDataView(
              new DataView(
                decoder.view.buffer,
                decoder.pos + decoder.view.byteOffset,
                length
              )
            );
            decoder.skip(length);

            break;
          }

          default:
            decoder.skipType(tag & 7);
            break;
        }
      }
      if (decoder.invalid()) return changetype<SatRangesResponse>(0);
      return obj;
    } // decode SatRangesResponse

    public size(): u32 {
      let size: u32 = 0;

      if (this.satranges != null) {
        const f: SatRanges = this.satranges as SatRanges;
        const messageSize = f.size();

        if (messageSize > 0) {
          size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
        }
      }

      return size;
    }

    // Encodes SatRangesResponse to the ArrayBuffer
    encode(): ArrayBuffer {
      return changetype<ArrayBuffer>(
        StaticArray.fromArray<u8>(this.encodeU8Array())
      );
    }

    // Encodes SatRangesResponse to the Array<u8>
    encodeU8Array(
      encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
      const buf = encoder.buf;

      if (this.satranges != null) {
        const f = this.satranges as SatRanges;

        const messageSize = f.size();

        if (messageSize > 0) {
          encoder.uint32(0xa);
          encoder.uint32(messageSize);
          f.encodeU8Array(encoder);
        }
      }

      return buf;
    } // encode SatRangesResponse
  } // SatRangesResponse

  export class SatRequest {
    public sat: u64;

    // Decodes SatRequest from an ArrayBuffer
    static decode(buf: ArrayBuffer): SatRequest {
      return SatRequest.decodeDataView(new DataView(buf));
    }

    // Decodes SatRequest from a DataView
    static decodeDataView(view: DataView): SatRequest {
      const decoder = new __proto.SafeDecoder(view);
      const obj = new SatRequest();

      while (!decoder.eof()) {
        const tag = decoder.tag();
        const number = tag >>> 3;

        switch (number) {
          case 1: {
            obj.sat = decoder.uint64();
            break;
          }

          default:
            decoder.skipType(tag & 7);
            break;
        }
      }
      if (decoder.invalid()) return changetype<SatRequest>(0);
      return obj;
    } // decode SatRequest

    public size(): u32 {
      let size: u32 = 0;

      size += this.sat == 0 ? 0 : 1 + __proto.Sizer.uint64(this.sat);

      return size;
    }

    // Encodes SatRequest to the ArrayBuffer
    encode(): ArrayBuffer {
      return changetype<ArrayBuffer>(
        StaticArray.fromArray<u8>(this.encodeU8Array())
      );
    }

    // Encodes SatRequest to the Array<u8>
    encodeU8Array(
      encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
      const buf = encoder.buf;

      if (this.sat != 0) {
        encoder.uint32(0x8);
        encoder.uint64(this.sat);
      }

      return buf;
    } // encode SatRequest
  } // SatRequest

  export class SatResponse {
    public pointer: u64;
    public satrange: SatRange = new SatRange();
    public outpoint: OutPoint = new OutPoint();
    public satranges: SatRanges = new SatRanges();

    // Decodes SatResponse from an ArrayBuffer
    static decode(buf: ArrayBuffer): SatResponse {
      return SatResponse.decodeDataView(new DataView(buf));
    }

    // Decodes SatResponse from a DataView
    static decodeDataView(view: DataView): SatResponse {
      const decoder = new __proto.SafeDecoder(view);
      const obj = new SatResponse();

      while (!decoder.eof()) {
        const tag = decoder.tag();
        const number = tag >>> 3;

        switch (number) {
          case 1: {
            obj.pointer = decoder.uint64();
            break;
          }
          case 2: {
            const length = decoder.uint32();
            obj.satrange = SatRange.decodeDataView(
              new DataView(
                decoder.view.buffer,
                decoder.pos + decoder.view.byteOffset,
                length
              )
            );
            decoder.skip(length);

            break;
          }
          case 3: {
            const length = decoder.uint32();
            obj.outpoint = OutPoint.decodeDataView(
              new DataView(
                decoder.view.buffer,
                decoder.pos + decoder.view.byteOffset,
                length
              )
            );
            decoder.skip(length);

            break;
          }
          case 4: {
            const length = decoder.uint32();
            obj.satranges = SatRanges.decodeDataView(
              new DataView(
                decoder.view.buffer,
                decoder.pos + decoder.view.byteOffset,
                length
              )
            );
            decoder.skip(length);

            break;
          }

          default:
            decoder.skipType(tag & 7);
            break;
        }
      }
      if (decoder.invalid()) return changetype<SatResponse>(0);
      return obj;
    } // decode SatResponse

    public size(): u32 {
      let size: u32 = 0;

      size += this.pointer == 0 ? 0 : 1 + __proto.Sizer.uint64(this.pointer);

      if (this.satrange != null) {
        const f: SatRange = this.satrange as SatRange;
        const messageSize = f.size();

        if (messageSize > 0) {
          size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
        }
      }

      if (this.outpoint != null) {
        const f: OutPoint = this.outpoint as OutPoint;
        const messageSize = f.size();

        if (messageSize > 0) {
          size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
        }
      }

      if (this.satranges != null) {
        const f: SatRanges = this.satranges as SatRanges;
        const messageSize = f.size();

        if (messageSize > 0) {
          size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
        }
      }

      return size;
    }

    // Encodes SatResponse to the ArrayBuffer
    encode(): ArrayBuffer {
      return changetype<ArrayBuffer>(
        StaticArray.fromArray<u8>(this.encodeU8Array())
      );
    }

    // Encodes SatResponse to the Array<u8>
    encodeU8Array(
      encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
      const buf = encoder.buf;

      if (this.pointer != 0) {
        encoder.uint32(0x8);
        encoder.uint64(this.pointer);
      }

      if (this.satrange != null) {
        const f = this.satrange as SatRange;

        const messageSize = f.size();

        if (messageSize > 0) {
          encoder.uint32(0x12);
          encoder.uint32(messageSize);
          f.encodeU8Array(encoder);
        }
      }

      if (this.outpoint != null) {
        const f = this.outpoint as OutPoint;

        const messageSize = f.size();

        if (messageSize > 0) {
          encoder.uint32(0x1a);
          encoder.uint32(messageSize);
          f.encodeU8Array(encoder);
        }
      }

      if (this.satranges != null) {
        const f = this.satranges as SatRanges;

        const messageSize = f.size();

        if (messageSize > 0) {
          encoder.uint32(0x22);
          encoder.uint32(messageSize);
          f.encodeU8Array(encoder);
        }
      }

      return buf;
    } // encode SatResponse
  } // SatResponse
} // ordinals
