import { expect } from "chai";
import fs from "fs-extra";
import { EventEmitter } from "events";
import { IndexPointer, readArrayBufferAsHex, IndexerProgram } from "metashrew-test";
import path from "path";
import { Block } from "bitcoinjs-lib";
import { MetashrewOrd } from "../lib/rpc";
import clone from "clone";

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

const stripHexPrefix = (key: string) => {
  if (key.substr(0, 2) === '0x') return key.substr(2);
  return key;
};

const addHexPrefix = (s: string) => {
  if (s.substr(0, 2) === '0x') return s;
  return '0x' + s;
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

const split = (ary, sym) => {
  return ary.reduce((r, v) => {
    if (v === sym) {
      r.push([]);
    } else {
      if (r.length ===0) r.push([]);
      r[r.length - 1].push(v);
    }
    return r;
  }, []);
};
  
const formatKey = (key: string) => {
  return split(Array.from(Buffer.from(stripHexPrefix(key), 'hex')), Buffer.from('/')[0]).reduce((r, v, i, ary) => {
    const token = Buffer.from(v).toString('utf8');
    if (!(i + v.length)) {
      return  r + '/';
    } else if (token.match(/^[0-9a-zA-Z]+$/)) {
      return r + '/' + token;
    } else {
      return r + '/' + addHexPrefix(Buffer.from(v).toString('hex'));
    }
  }, '');
};

const formatKv = (kv: any) => {
  return Object.fromEntries(Object.entries(kv).map(([key, value]) => [ formatKey(key), value ]));
};

  


describe("metashrew index", () => {
	/*
  it("indexes the genesis block", async () => {
    const program = new IndexerProgram(
      new Uint8Array(
        Array.from(
          await fs.readFile(
            path.join(__dirname, "..", "build", "release.wasm"),
          ),
        ),
      ).buffer,
    );
    program.setBlock(
      await fs.readFile(path.join(__dirname, "genesis.hex"), "utf8"),
    );
    program.setBlockHeight(0);
    program.on("log", (v) => console.log(v));
    await program.run("_start");
    // console.log(program.kv);
  });
  it("indexes the first inscription", async () => {
    const program = new IndexerProgram(
      new Uint8Array(
        Array.from(
          await fs.readFile(
            path.join(__dirname, "..", "build", "release.wasm"),
          ),
        ),
      ).buffer,
    );
    program.setBlock(
      await fs.readFile(path.join(__dirname, "ordinal-genesis.hex"), "utf8"),
    );
    program.setBlockHeight(767430);
    program.on("log", (v) => console.log(v));
    const ms = await program.run("_start");
    // console.log(program.kv);
    // console.log(String(ms) + "ms");
  });
  it("indexes block 785391", async () => {
    const program = new IndexerProgram(
      new Uint8Array(
        Array.from(
          await fs.readFile(
            path.join(__dirname, "..", "build", "release.wasm"),
          ),
        ),
      ).buffer,
    );
    program.setBlock(
      await fs.readFile(path.join(__dirname, "785391.hex"), "utf8"),
    );
    program.setBlockHeight(785391);
    program.on("log", (v) => console.log(v));
    const ms = await program.run("_start");
    // console.log(program.kv);
    // console.log(String(ms) + "ms");
  });
  it("indexes block 772904", async () => {
    const program = new IndexerProgram(
      new Uint8Array(
        Array.from(
          await fs.readFile(
            path.join(__dirname, "..", "build", "release.wasm"),
          ),
        ),
      ).buffer,
    );
    program.setBlock(
      await fs.readFile(path.join(__dirname, "772904.hex"), "utf8"),
    );
    program.setBlockHeight(772904);
    prograom.on("log", (v) => console.log(v));
    const mos = await program.run("_start");
    // console.log(program.kv);
    // console.log(String(ms) + "ms");
  });
  it("indexes a range of blocks", async () => {
    const program = new IndexerProgram(
      new Uint8Array(
        Array.from(
          await fs.readFile(
            path.join(__dirname, "..", "build", "release.wasm"),
          ),
        ),
      ).buffer,
    );
//    program.kv = require(path.join(__dirname, 'snapshot-1295'));
    program.on("log", (v) => console.log(v));
    async function runBlock(i: number) {
      program.setBlock(
        await rpcCall("getblock", [await rpcCall("getblockhash", [i]), 0]),
      );
      program.setBlockHeight(i);
      await program.run("_start");
    }
    for (let i = 0; i < 2; i++) {
      console.log(`BLOCK ${i}`);
      await runBlock(i);
    }
  });
  */
  it('correctly indexes satranges', async () => {
    const block = await rpcCall('getblock', [ await rpcCall('getblockhash', [ 1 ]), 0 ]);
    const fee = 50000;
    const decoded = Block.fromHex(block);
    const program = new IndexerProgram(
      new Uint8Array(
        Array.from(
          await fs.readFile(
            path.join(__dirname, "..", "build", "debug.wasm"),
          ),
        ),
      ).buffer,
    );
    program.on('log', (v) => console.log(v));
//    program.kv = require(path.join(__dirname, 'snapshot-1295'));
    async function runBlock(i: number) {
      program.setBlock(
        await rpcCall("getblock", [await rpcCall("getblockhash", [i]), 0]),
      );
      program.setBlockHeight(i);
      await program.run("_start");
    }
    for (let i = 0; i < 10; i++) {
      await runBlock(i);
      IndexPointer.for(program, '/startingsat').getUInt64();
    }
    console.log(await satranges(program, '4a5e1e4baab89f3a32518a88c31bc87f618f76673e2cc77ab2127b7afdeda33b:0'));
    console.log(await satranges(program, '0e3e2357e806b6cdb1f70b54c3a3a17b6714ee1f0e68bebb44a74b1efd512098:0'));
  });
  /*
  it('creates a null tx', async () => {
    const program = new IndexerProgram(
      new Uint8Array(
        Array.from(
          await fs.readFile(
            path.join(__dirname, "..", "build", "debug.wasm"),
          ),
        ),
      ).buffer,
    );
    program.on('log', (v) => console.log(v));
    program.setBlockHeight(0);
    program.setBlock('0x');
    await program.run('test_nullTx');
  });
 */
});
