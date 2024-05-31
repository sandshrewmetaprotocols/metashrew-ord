import { SAT_TO_OUTPOINT, OUTPOINT_TO_SAT, STARTING_SAT } from "../tables";
import {
  Transaction,
  OutPoint,
  Input,
} from "metashrew-as/assembly/blockdata/transaction";

import { flatten, rangeLength } from "../utils";

export class SatRanges {
  public sats: Array<u64>;
  public distances: Array<u64>;
  constructor(sats: Array<u64>, distances: Array<u64>) {
    this.sats = sats;
    this.distances = distances;
  }
  static fromSats(sats: Array<u64>): SatRanges {
    const distances = new Array<u64>(sats.length);
    for (let i = 0; i < sats.length; i++) {
      distances[i] = rangeLength<u64>(
        SAT_TO_OUTPOINT,
        sats[i],
        STARTING_SAT.getValue<u64>()
      );
    }
    return new SatRanges(sats, distances);
  }
  pull(): SatRanges {
    this.sats.forEach((v: u64, i: i32, ary: Array<u64>) => {
      SAT_TO_OUTPOINT.nullify(v);
    });
    return this;
  }
  static fromTransaction(tx: Transaction): SatRanges {
    return SatRanges.fromSats(
      flatten(
        tx.ins.map<Array<u64>>((v: Input) =>
          OUTPOINT_TO_SAT.select(
            v.previousOutput().toArrayBuffer()
          ).getListValues<u64>()
        )
      )
    );
  }
}
