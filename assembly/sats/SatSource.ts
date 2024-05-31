import { SatRanges } from "./SatRanges";
import { Transaction } from "metashrew-as/assembly/blockdata/transaction";

export class SatSource {
  public ranges: SatRanges;
  public pointer: i32;
  public offset: u64;
  constructor(ranges: SatRanges) {
    this.ranges = ranges;
  }
  static fromTransaction(tx: Transaction): SatSource {
    return new SatSource(SatRanges.fromTransaction(tx));
  }
  consumed(): boolean {
    return (
      this.pointer >= this.ranges.sats.length ||
      (this.pointer === this.ranges.sats.length - 1 &&
        this.offset >= this.ranges.distances[this.ranges.distances.length - 1])
    );
  }
  pull(): SatSource {
    this.ranges.pull();
    return this;
  }
  static range(sat: u64, distance: u64): SatSource {
    const sats = new Array<u64>(1);
    sats[0] = sat;
    const distances = new Array<u64>(1);
    distances[0] = distance;
    return new SatSource(new SatRanges(sats, distances));
  }
}
