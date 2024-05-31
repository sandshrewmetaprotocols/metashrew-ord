import { Box, RCBox } from "metashrew-as/assembly/utils/box";
import { _flush, input, get, set } from "metashrew-as/assembly/indexer/index";
import {
  parseBytes,
  parsePrimitive,
  concat,
  primitiveToBuffer,
} from "metashrew-as/assembly/utils/utils";
import { Block } from "metashrew-as/assembly/blockdata/block";
import {
  Transaction,
  Input,
  Output,
  OutPoint,
} from "metashrew-as/assembly/blockdata/transaction";
import { console } from "metashrew-as/assembly/utils/logging";
import { toRLP, RLPItem } from "metashrew-as/assembly/utils/rlp";
import {
  encodeHexFromBuffer,
  encodeHex,
} from "metashrew-as/assembly/utils/hex";
import { Inscription } from "metashrew-as/assembly/blockdata/inscription";
import { subsidy } from "metashrew-as/assembly/utils/ordinals";
import { Height } from "metashrew-as/assembly/blockdata/height";
import { Sat, SatPoint } from "metashrew-as/assembly/blockdata/sat";
import { JUBILEE_HEIGHT } from "./constants";
import { BST } from "metashrew-as/assembly/indexer/bst";
import { SatRanges, SatSource, SatSink } from "./sats";
import { min, max, flatten, toID, rangeLength } from "./utils";

import {
  SAT_TO_OUTPOINT,
  OUTPOINT_TO_SAT,
  OUTPOINT_TO_VALUE,
  OUTPOINT_TO_SEQUENCE_NUMBERS,
  HEIGHT_TO_BLOCKHASH,
  BLOCKHASH_TO_HEIGHT,
  STARTING_SAT,
  INSCRIPTION_ID_TO_INSCRIPTION,
  SATPOINT_TO_INSCRIPTION_ID,
  SATPOINT_TO_SAT,
  INSCRIPTION_ID_TO_SATPOINT,
  INSCRIPTION_ID_TO_BLOCKHEIGHT,
  HEIGHT_TO_INSCRIPTION_IDS,
  NEXT_SEQUENCE_NUMBER,
  SEQUENCE_NUMBER_TO_INSCRIPTION_ID,
  INSCRIPTION_ID_TO_SEQUENCE_NUMBER,
} from "./tables";

export function trap(): void {
  unreachable();
}
class Index {
  static indexTransactionInscriptions(
    tx: Transaction,
    txid: ArrayBuffer,
    height: u32
  ): void {
    const jubilant = height >= JUBILEE_HEIGHT;
    let total = 0;
    let offset: u64 = 0;
    let outputIndex: i32 = 0;
    // console.log(height.toString(10));
    // console.log(Box.from(txid).toHexString());
    for (let i = 0; i < tx.ins.length; i++) {
      // console.log(i.toString(10));

      const inscription = tx.ins[i].inscription();
      if (inscription !== null) {
        const sequenceNumber = NEXT_SEQUENCE_NUMBER.getValue<u64>();
        const outpoint = OutPoint.from(txid, <u32>outputIndex).toArrayBuffer();
        const satpoint = SatPoint.from(outpoint, <u64>offset).toArrayBuffer();
        const value = OUTPOINT_TO_VALUE.select(
          tx.ins[i].previousOutput().toArrayBuffer()
        ).getValue<u64>();
        offset += value;
        if (offset >= tx.outs[outputIndex].value) {
          outputIndex++;
          offset = 0;
        }
        const sat = OUTPOINT_TO_SAT.selectIndex(0).getValue<u64>();
        const inscriptionId = toID(satpoint, 0);
        SATPOINT_TO_SAT.select(satpoint).setValue<u64>(sat);
        SATPOINT_TO_INSCRIPTION_ID.select(satpoint).set(inscriptionId);
        INSCRIPTION_ID_TO_SATPOINT.select(inscriptionId).set(satpoint);
        INSCRIPTION_ID_TO_BLOCKHEIGHT.select(inscriptionId).setValue<u32>(
          height
        );
        HEIGHT_TO_INSCRIPTION_IDS.selectValue<u32>(height).append(
          inscriptionId
        );
        SEQUENCE_NUMBER_TO_INSCRIPTION_ID.selectValue<u64>(sequenceNumber).set(
          inscriptionId
        );
        INSCRIPTION_ID_TO_SEQUENCE_NUMBER.select(inscriptionId).setValue<u64>(
          sequenceNumber
        );
        INSCRIPTION_ID_TO_INSCRIPTION.select(inscriptionId).set(
          inscription.toArrayBuffer()
        );
        OUTPOINT_TO_SEQUENCE_NUMBERS.select(outpoint).appendValue<u64>(
          sequenceNumber
        );
      } else {
        const previousOutput = tx.ins[i].previousOutput().toArrayBuffer();
        const inscriptionsForOutpoint =
          OUTPOINT_TO_SEQUENCE_NUMBERS.select(
            previousOutput
          ).getListValues<u64>();
        for (let j = 0; j < inscriptionsForOutpoint.length; j++) {
          const inscriptionId =
            SEQUENCE_NUMBER_TO_INSCRIPTION_ID.selectValue<u64>(
              inscriptionsForOutpoint[j]
            ).get();
          const previousSatPoint =
            INSCRIPTION_ID_TO_SATPOINT.select(inscriptionId).get();
          const sat = SATPOINT_TO_SAT.select(previousSatPoint).getValue<u64>();
          const startingSat = SAT_TO_OUTPOINT.seekLower(sat + 1);
          const outpoint = SAT_TO_OUTPOINT.get(startingSat);
          const satpoint = SatPoint.from(
            outpoint,
            sat - startingSat
          ).toArrayBuffer();
          SATPOINT_TO_SAT.select(satpoint).setValue<u64>(sat);
          SATPOINT_TO_INSCRIPTION_ID.select(satpoint).set(inscriptionId);
          INSCRIPTION_ID_TO_SATPOINT.select(inscriptionId).set(satpoint);
          OUTPOINT_TO_SEQUENCE_NUMBERS.select(outpoint).appendValue<u64>(
            inscriptionsForOutpoint[j]
          );
        }
      }
    }
  }

  static totalOutputs(tx: Transaction): u64 {
    let total: u64 = 0;
    for (let i: i32 = 0; i < tx.outs.length; i++) {
      total += tx.outs[i].value;
    }
    return total;
  }
  static totalInputs(tx: Transaction): u64 {
    let total: u64 = 0;
    for (let i: i32 = 0; i < tx.ins.length; i++) {
      total += OUTPOINT_TO_VALUE.select(
        tx.ins[i].previousOutput().toArrayBuffer()
      ).getValue<u64>();
    }
    return total;
  }
  static transactionFeesForBlock(block: Block): u64 {
    let total: u64 = 0;
    for (let i: i32 = 1; i < block.transactions.length; i++) {
      const tx = block.transactions[i];
      total += Index.totalInputs(tx) - Index.totalOutputs(tx);
    }
    return total;
  }
  static indexOutputValuesForTransaction(tx: Transaction): void {
    const txid = tx.txid();
    for (let i = 0; i < tx.outs.length; i++) {
      OUTPOINT_TO_VALUE.select(OutPoint.from(txid, i).toArrayBuffer()).setValue(
        tx.outs[i].value
      );
    }
  }
  static indexOutputValuesForBlock(block: Block): void {
    for (let i = 0; i < block.transactions.length; i++) {
      Index.indexOutputValuesForTransaction(block.transactions[i]);
    }
  }
  static indexBlock(height: u32, block: Block): void {
    HEIGHT_TO_BLOCKHASH.selectValue<u32>(height).set(block.blockhash());
    BLOCKHASH_TO_HEIGHT.select(block.blockhash()).setValue<u32>(height);
    Index.indexOutputValuesForBlock(block);
    const coinbase = block.coinbase();
    let startingSat = STARTING_SAT.getValue<u64>();
    const reward =
      Index.totalOutputs(coinbase) - Index.transactionFeesForBlock(block);
    STARTING_SAT.setValue<u64>(startingSat + reward);
    const coinbaseSource = SatSource.range(startingSat, reward);
    const coinbaseSink = SatSink.fromTransaction(coinbase);
    coinbaseSink.consume(coinbaseSource);

    for (let i: i32 = 1; i < block.transactions.length; i++) {
      const tx = block.transactions[i];
      const transactionSink = SatSink.fromTransaction(tx);
      const transactionSource = SatSource.fromTransaction(tx).pull();
      transactionSink.consume(transactionSource);
      const txid = tx.txid();
      if (!transactionSource.consumed())
        coinbaseSink.consume(transactionSource);
      Index.indexTransactionInscriptions(tx, txid, height);
    }
  }
}

function decodeHex(hex: string): ArrayBuffer {
  const result = new ArrayBuffer(hex.length / 2);
  for (let i = 0; i < hex.length; i += 2) {
    store<u8>(
      changetype<usize>(result) + i / 2,
      <u8>parseInt(hex.substring(i, i + 2), 16)
    );
  }
  return result;
}

/*
function test_storage_persisted(): void {
  let outpoint = OutPoint.from(decodeHex("04c3d4dd40af599514fa2861fbc884f7ee9bcb7717763cb84332319bb16c5fac"), 17).toArrayBuffer();
  let value = OUTPOINT_TO_VALUE.select(outpoint).getValue<u64>();
  console.log('value: ' + value.toString(10));
  //if (value !== 0) throw Error('abort');
}
*/

export function _start(): void {
  const data = input();
  const box = Box.from(data);
  const height = parsePrimitive<u32>(box);
  const block = new Block(box);
  Index.indexBlock(height, block);
  _flush();
}

export function sat(): ArrayBuffer {
  const point = new Sat(parsePrimitive<u64>(Box.from(input())));
  return toRLP(
    RLPItem.fromList([
      RLPItem.fromValue(<usize>point.n()),
      RLPItem.fromArrayBuffer(
        String.UTF8.encode(
          point.height().n().toString(10) + "." + point.third().toString(10)
        )
      ),
      RLPItem.fromValue(<usize>point.height().n()),
      RLPItem.fromValue(<usize>point.cycle()),
      RLPItem.fromValue(<usize>point.epoch().n()),
      RLPItem.fromValue(<usize>point.period()),
      RLPItem.fromValue(<usize>point.third()),
    ])
  );
}

export function inscription(): ArrayBuffer {
  const data = input();
  return data;
}

export function content(): ArrayBuffer {
  const data = input();
  return data;
}

export function inscriptionsfrom(): ArrayBuffer {
  const data = input();
  return data;
}

export function inscriptionsforblock(): ArrayBuffer {
  const height = parsePrimitive<u32>(Box.from(input()));
  return new ArrayBuffer(0);
}

export function output(): ArrayBuffer {
  const data = Box.from(input());
  const outpoint = parseBytes(data, 32);
  const vout = parsePrimitive<u32>(data);
  return new ArrayBuffer(0);
}
