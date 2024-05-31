import { SAT_TO_OUTPOINT, OUTPOINT_TO_SAT } from "../tables";
import {
  Transaction,
  OutPoint,
} from "metashrew-as/assembly/blockdata/transaction";
import { SatSource } from "./SatSource";

export class SatSink {
  public target: Transaction;
  public pointer: i32;
  public offset: u64;
  constructor(target: Transaction) {
    this.target = target;
  }
  filled(): boolean {
    return (
      this.pointer >= this.target.outs.length ||
      (this.pointer === this.target.outs.length - 1 &&
        this.offset >= this.target.outs[this.target.outs.length - 1].value)
    );
  }
  currentOutpoint(): ArrayBuffer {
    return OutPoint.from(this.target.txid(), this.pointer).toArrayBuffer();
  }
  consume(source: SatSource): void {
    while (!source.consumed() && !this.filled()) {
      const sourceRemaining =
        source.ranges.distances[source.pointer] - source.offset;
      const targetRemaining =
        this.target.outs[this.pointer].value - this.offset;
      const outpoint = this.currentOutpoint();
      const sat = source.ranges.sats[source.pointer] + source.offset;
      SAT_TO_OUTPOINT.set(sat, outpoint);
      OUTPOINT_TO_SAT.select(outpoint).appendValue<u64>(sat);
      if (targetRemaining < sourceRemaining) {
        this.pointer++;
        this.offset = 0;
        source.offset += targetRemaining;
      } else if (sourceRemaining < targetRemaining) {
        source.pointer++;
        source.offset = 0;
        this.offset += sourceRemaining;
      } else {
        source.offset = 0;
        source.pointer++;
        this.offset = 0;
        this.pointer++;
      }
    }
  }
  static fromTransaction(tx: Transaction): SatSink {
    return new SatSink(tx);
  }
}
