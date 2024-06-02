'use strict';

import * as ordinals from "./ordinals";

import { ethers } from "ethers";
import url from "url";

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
    this.programHash = programHash;
    this.blockTag = blockTag;
  }
  async _call({
    method,
    input
  }): Promise<string> {
    return (await (await fetch(url.format({
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
    })).json()).result;
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
    return await this._call({
      method: 'satranges',
      input: buffer
    });
  }
}
