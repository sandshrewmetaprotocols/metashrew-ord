var bitcoinjs = require("bitcoinjs-lib");
var TEST_BTC_SEED =
  "fffcf9f6f3f0edeae7e4e1dedbd8d5d2cfccc9c6c3c0bdbab7b4b1aeaba8a5a29f9c999693908d8a8784817e7b7875726f6c696663605d5a5754514e4b484542";
var HDKey = require("hdkey");
var hdkey = HDKey.fromMasterSeed(Buffer.from(TEST_BTC_SEED, "hex"));
var derivation = hdkey.derive("m/44'/49'/84'/0'/0'");
var rpcCall = async (method, params) => {
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
};
