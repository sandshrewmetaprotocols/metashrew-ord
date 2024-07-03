var bitcoinjs = require('bitcoinjs-lib');
var TEST_BTC_SEED = 'fffcf9f6f3f0edeae7e4e1dedbd8d5d2cfccc9c6c3c0bdbab7b4b1aeaba8a5a29f9c999693908d8a8784817e7b7875726f6c696663605d5a5754514e4b484542'
var HDKey = require('hdkey');
var hdkey = HDKey.fromMasterSeed(Buffer.from(TEST_BTC_SEED, 'hex'))
var derivation = hdkey.derive("m/44'/49'/84'/0'/0'")
