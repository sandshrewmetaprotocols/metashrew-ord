'use strict';

import * as ordinals from "./ordinals";

import { ethers } from "ethers";
import url from "url";
import fs from "fs";

const addHexPrefix = (s) => s.substr(0, 2) === '0x' ? s : '0x' + s;

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
    console.log(input);
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
    console.log(response);
    return addHexPrefix(response.result);
  }
  async satranges({
    outpoint
  }: any): Promise<any> { 
    const [ hash, vout ] = outpoint.split(':');
    const buffer = ethers.hexlify(ordinals.SatRangesRequest.toBinary({
      outpoint: {
        hash: ethers.toBeArray(addHexPrefix(hash)),
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
}
