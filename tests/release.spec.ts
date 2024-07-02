import { expect } from "chai";
import fs from "fs-extra";
import { EventEmitter } from "events";
import { IndexPointer, readArrayBufferAsHex, IndexerProgram } from "metashrew-test";
import path from "path";
import * as bitcoinjs from "bitcoinjs-lib";
import { MetashrewOrd } from "../lib/rpc";
import clone from "clone";

const stripHexPrefix = (key: string) => {
  if (key.substr(0, 2) === "0x") return key.substr(2);
  return key;
};

const addHexPrefix = (s: string) => {
  if (s.substr(0, 2) === "0x") return s;
  return "0x" + s;
};

const split = (ary, sym) => {
  return ary.reduce((r, v) => {
    if (v === sym) {
      r.push([]);
    } else {
      if (r.length === 0) r.push([]);
      r[r.length - 1].push(v);
    }
    return r;
  }, []);
};

const formatKey = (key: string) => {
  return split(
    Array.from(Buffer.from(stripHexPrefix(key), "hex")),
    Buffer.from("/")[0],
  ).reduce((r, v, i, ary) => {
    const token = Buffer.from(v).toString("utf8");
    if (!(i + v.length)) {
      return r + "/";
    } else if (token.match(/^[0-9a-zA-Z]+$/)) {
      return r + "/" + token;
    } else {
      return r + "/" + addHexPrefix(Buffer.from(v).toString("hex"));
    }
  }, "");
};

const formatValue = (v) => {
  const token = Buffer.from(v.substr(2), "hex").toString("utf8");
  if (token.match(/^[0-9a-zA-Z]+$/)) return token;
  return v;
};

const formatKv = (kv: any) => {
  return Object.fromEntries(
    Object.entries(kv).map(([key, value]) => [formatKey(key), formatValue(value)]),
  );
};

const DEBUG_WASM = fs.readFileSync(
  path.join(__dirname, "..", "build", "debug.wasm"),
);

const buildProgram = () => {
  const program = new IndexerProgram(
    new Uint8Array(Array.from(DEBUG_WASM)).buffer,
  );
  program.on("log", (v) => console.log(v.replace(/\0/g, "").trim()));
  return program;
};

const buildBytes32 = () => Buffer.allocUnsafe(32);

const EMPTY_BUFFER = Buffer.allocUnsafe(0);
const EMPTY_WITNESS = [];

const TEST_BTC_ADDRESS1 = "16aE44Au1UQ5XqKMUhCMXTX7ZxbmAcQNA1";
const TEST_BTC_ADDRESS2 = "1AdAhGdUgGF6ip7bBcVvuWYuuCxAeonNaK";

const buildCoinbase = (outputs) => {
  const tx = new bitcoinjs.Transaction();
  tx.ins.push({
    hash: buildBytes32(),
    index: bitcoinjs.Transaction.DEFAULT_SEQUENCE,
    script: EMPTY_BUFFER,
    sequence: bitcoinjs.Transaction.DEFAULT_SEQUENCE,
    witness: EMPTY_WITNESS,
  });
  outputs.forEach((v) => tx.outs.push(v));
  return tx;
};

const buildInput = (o) => {
  return {
    ...o,
    script: EMPTY_BUFFER,
    sequence: bitcoinjs.Transaction.DEFAULT_SEQUENCE,
    witness: EMPTY_WITNESS,
  };
};

const buildTransaction = (ins, outs) => {
  const tx = new bitcoinjs.Transaction();
  ins.forEach((v) => tx.ins.push(v));
  outs.forEach((v) => tx.outs.push(v));
  return tx;
};

const buildCoinbaseToTestAddress = () =>
  buildCoinbase([
    {
      script: bitcoinjs.payments.p2pkh({
        address: TEST_BTC_ADDRESS1,
        network: bitcoinjs.networks.bitcoin,
      }).output,
      value: 625000000,
    },
  ]);

const buildDefaultBlock = () => {
  const block = new bitcoinjs.Block();
  block.prevHash = buildBytes32();
  block.merkleRoot = buildBytes32();
  block.witnessCommit = buildBytes32();
  block.transactions = [];
  return block;
};

const runTest = (s) =>
  it(s, async () => {
    const program = buildProgram();
    await program.run(s);
    await new Promise((r) => setTimeout(r, 2000));
    return program;
  });


function cloneProgram(program: any): IndexerProgram {
  const cloned = clone(program);
  cloned.program = program.program;
  return cloned;
}
const satranges = async (program: IndexerProgram, outpoint: string): any => {
  const cloned = program; // just mutate it
  const result = await MetashrewOrd.prototype.satranges.call({
    async _call({
      input
    }) {
      cloned.setBlock(input);
      const ptr = await cloned.run('satranges');
      return readArrayBufferAsHex(cloned.memory, ptr);
    }
  }, { outpoint });
  return result;
};

async function rpcCall(method, params) {
  const response = await fetch(
    "https://mainnet.sandshrew.io/v1/154f9aaa25a986241357836c37f8d71",
    {
      method: "POST",
      body: JSON.stringify({
        method,
        params,
        jsonrpc: "2.0",
        id: Date.now(),
      }),
      headers: {
        "Content-Type": "application/json",
      },
    },
  );
  return (await response.json()).result;
}

describe("metashrew-ord", () => {
  it("should index satranges", async () => {
    const program = buildProgram();
    program.setBlockHeight(0);
    const block = buildDefaultBlock();
    const coinbase = buildCoinbaseToTestAddress();
    block.transactions.push(coinbase);
    const transaction = buildTransaction(
      [
        {
          hash: coinbase.getHash(),
          index: 0,
          witness: EMPTY_WITNESS,
          script: EMPTY_BUFFER,
        },
      ],
      [
        {
          script: bitcoinjs.payments.p2pkh({
            address: TEST_BTC_ADDRESS1,
            network: bitcoinjs.networks.bitcoin,
          }).output,
          value: 1,
        },
        {
          script: bitcoinjs.payments.p2pkh({
            network: bitcoinjs.networks.bitcoin,
            address: TEST_BTC_ADDRESS1,
          }).output,
          value: 62399999,
        },
      ],
    );
    const block2 = buildDefaultBlock();
    const coinbase2 = buildCoinbase([{
      script: bitcoinjs.payments.p2pkh({
        address: TEST_BTC_ADDRESS2,
        network: bitcoinjs.networks.bitcoin,
      }).output,
      value: 625000000,
    }]);
    block2.transactions.push(coinbase2);
    const transaction2 = buildTransaction(
      [
        {
          hash: transaction.getHash(),
          index: 0,
          witness: EMPTY_WITNESS,
          script: EMPTY_BUFFER,
        },
        {
          hash: transaction.getHash(),
          index: 1,
          witness: EMPTY_WITNESS,
          script: EMPTY_BUFFER,
        },
      ],
      [
        {
          script: bitcoinjs.payments.p2pkh({
            address: TEST_BTC_ADDRESS2,
            network: bitcoinjs.networks.bitcoin,
          }).output,
          value: 623000000,
        }
      ],
    );
    block2.transactions.push(transaction2);
    program.setBlock(block.toHex());
    await program.run("_start");
    program.setBlockHeight(1);
    program.setBlock(block2.toHex());
    await program.run("_start");
    const result = await satranges(program, `${transaction2.getHash().toString('hex')}:0`);
    console.log("satranges output", result);
  });
});
