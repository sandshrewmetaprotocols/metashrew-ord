'use strict';

import * as ordinals from "./ordinals";

import { ethers } from "ethers";
import url from "url";
import fs from "fs";

const addHexPrefix = (s) => s.substr(0, 2) === '0x' ? s : '0x' + s;

let id = 0;

export class MetashrewOrd {
  public baseUrl: string;
  public blockTag: string;
  public programHash: string;
  constructor({
    baseUrl,
    programHash,
    blockTag
  }: any) {
    this.baseUrl = baseUrl || 'http://localhost:8080';
    this.programHash = programHash || process.env.PROGRAM_HASH || ethers.solidityPackedKeccak256(['bytes'], [ ethers.hexlify(fs.readFileSync(process.env.PROGRAM_PATH)) ]);
    this.blockTag = blockTag;
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
	params: [ this.programHash, method, input, this.blockTag ]
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
    return ordinals.SatRangesResponse.fromBinary(ethers.toBeArray(byteString)).satranges.ranges.map((v) => ({
      start: v.start,
      distance: v.distance
    }));
  }
}
