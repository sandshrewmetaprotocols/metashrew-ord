import HDKey from "hdkey";
import * as bitcoinjs from "bitcoinjs-lib";

export const EMPTY_BUFFER = Buffer.allocUnsafe(0);
export const EMPTY_WITNESS = [];

export const TEST_BTC_ADDRESS1 = "16aE44Au1UQ5XqKMUhCMXTX7ZxbmAcQNA1";
export const TEST_BTC_ADDRESS2 = "1AdAhGdUgGF6ip7bBcVvuWYuuCxAeonNaK";
export const TEST_BTC_SEED =
  "fffcf9f6f3f0edeae7e4e1dedbd8d5d2cfccc9c6c3c0bdbab7b4b1aeaba8a5a29f9c999693908d8a8784817e7b7875726f6c696663605d5a5754514e4b484542";

const hdkey = HDKey.fromMasterSeed(Buffer.from(TEST_BTC_SEED, "hex"));
const derivation = hdkey.derive("m/44'/49'/84'/0'/0'");

let keyIndex = 0;

export const randomAddress = () => {
  return bitcoinjs.address.toBase58Check(
    (derivation as any).deriveChild(keyIndex++).pubKeyHash,
    0,
  );
};
