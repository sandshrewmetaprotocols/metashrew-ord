import {
  EMPTY_BUFFER,
  EMPTY_WITNESS,
  TEST_BTC_SEED,
  TEST_BTC_ADDRESS1,
  TEST_BTC_ADDRESS2,
  randomAddress,
} from "./constants";
import * as bitcoinjs from "bitcoinjs-lib";

export const buildBytes32 = () => Buffer.allocUnsafe(32);
export const buildCoinbase = (outputs) => {
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

export const buildInput = (o) => {
  return {
    ...o,
    script: EMPTY_BUFFER,
    sequence: bitcoinjs.Transaction.DEFAULT_SEQUENCE,
    witness: EMPTY_WITNESS,
  };
};

export const buildTransaction = (ins, outs) => {
  const tx = new bitcoinjs.Transaction();
  ins.forEach((v) => tx.ins.push(v));
  outs.forEach((v) => tx.outs.push(v));
  return tx;
};

export const buildCoinbaseToAddress = (address) =>
  buildCoinbase([
    {
      script: bitcoinjs.payments.p2pkh({
        address: address,
        network: bitcoinjs.networks.bitcoin,
      }).output,
      value: 5000000000,
    },
  ]);

export const buildCoinbaseToTestAddress = () =>
  buildCoinbase([
    {
      script: bitcoinjs.payments.p2pkh({
        address: TEST_BTC_ADDRESS1,
        network: bitcoinjs.networks.bitcoin,
      }).output,
      value: 5000000000,
    },
  ]);

export const buildCoinbaseToRandomAddress = () =>
  buildCoinbase([
    {
      script: bitcoinjs.payments.p2pkh({
        address: randomAddress(),
        network: bitcoinjs.networks.bitcoin,
      }).output,
      value: 5000000000,
    },
  ]);

export const buildDefaultBlock = () => {
  const block = new bitcoinjs.Block();
  block.prevHash = buildBytes32();
  block.merkleRoot = buildBytes32();
  block.witnessCommit = buildBytes32();
  block.transactions = [];
  return block;
};
