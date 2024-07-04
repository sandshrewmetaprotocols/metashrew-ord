'use strict';

import * as ordinals from "./ordinals";

import { ethers } from "ethers";
import url from "url";
import fs from "fs";

const addHexPrefix = (s) => s.substr(0, 2) === '0x' ? s : '0x' + s;
const stripHexPrefix = (s) => addHexPrefix(s).substr(2);

let id = 0;

const toBeArray = (v) => v === '0x' ? new Uint8Array() : ethers.toBeArray(v);

export class MetashrewOrd {
  public baseUrl: string;
  public blockTag: string;
  constructor({
    baseUrl,
    blockTag
  }: any) {
    this.baseUrl = baseUrl || 'http://localhost:8080';
    this.blockTag = blockTag || 'latest';
  }
  async _call({
    method,
    input
  }): Promise<string> {
    const response = (await (await fetch(url.format({
      ...url.parse(this.baseUrl),
      pathname: '/'
    }), {
      method: 'POST',
      body: JSON.stringify({
        id: id++,
	jsonrpc: '2.0',
	method: 'metashrew_view',
	params: [ method, input, this.blockTag ]
      }),
      headers: {
        'Content-Type': 'application/json',
	'Accept': 'application/json'
      }
    })).json());
    return addHexPrefix(response.result);
  }
  async satranges({
    outpoint
  }: any): Promise<any> { 
    const [ hash, vout ] = outpoint.split(':');
    const hashBytes = Array.from(Buffer.from(stripHexPrefix(hash), 'hex'));
    const buffer = ethers.hexlify(ordinals.SatRangesRequest.toBinary({
      outpoint: {
        hash: new Uint8Array(hashBytes),
	vout: Number(vout)
      }
    }));
    const byteString = await this._call({
      method: 'satranges',
      input: buffer
    });
    const ary = toBeArray(byteString);
    const decoded = ordinals.SatRangesResponse.fromBinary(ary);
    return decoded.satranges.ranges.map((v) => ({
      start: v.start,
      distance: v.distance
    }));
  }
  async sat({
    sat
  }: any): Promise<any> { 
    const buffer = ethers.hexlify(ordinals.SatRequest.toBinary({
      sat
    }));
    const byteString = await this._call({
      method: 'sat',
      input: buffer
    });
    const ary = toBeArray(byteString);
    const decoded = ordinals.SatResponse.fromBinary(ary);
    return {
      pointer: decoded.pointer,
      satrange: {
        start: decoded.satrange.start,
	distance: decoded.satrange.distance
      },
      satrangesOnOutpoint: decoded.satranges.ranges.map((v) => ({
        start: v.start,
        distance: v.distance
      })),
      outpoint: {
        txid: stripHexPrefix(ethers.hexlify(decoded.outpoint.hash)),
	vout: decoded.outpoint.vout
      }
    };
  }
}
