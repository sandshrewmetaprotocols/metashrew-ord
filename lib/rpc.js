'use strict';
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.MetashrewOrd = void 0;
const ordinals = __importStar(require("./ordinals"));
const ethers_1 = require("ethers");
const url_1 = __importDefault(require("url"));
const fs_1 = __importDefault(require("fs"));
const addHexPrefix = (s) => s.substr(0, 2) === '0x' ? s : '0x' + s;
let id = 0;
const toBeArray = (v) => v === '0x' ? new Uint8Array() : ethers_1.ethers.toBeArray(v);
class MetashrewOrd {
    constructor({ baseUrl, programHash, blockTag }) {
        this.baseUrl = baseUrl || 'http://localhost:8080';
        this.programHash = programHash || process.env.PROGRAM_HASH || ethers_1.ethers.solidityPackedKeccak256(['bytes'], [ethers_1.ethers.hexlify(fs_1.default.readFileSync(process.env.PROGRAM_PATH))]);
        this.blockTag = blockTag || 'latest';
        ;
    }
    async _call({ method, input }) {
        const response = (await (await fetch(url_1.default.format({
            ...url_1.default.parse(this.baseUrl),
            pathname: '/'
        }), {
            method: 'POST',
            body: JSON.stringify({
                id: id++,
                jsonrpc: '2.0',
                method: 'metashrew_view',
                params: [this.programHash, method, input, this.blockTag]
            }),
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json'
            }
        })).json());
        return addHexPrefix(response.result);
    }
    async satranges({ outpoint }) {
        const [hash, vout] = outpoint.split(':');
        const buffer = ethers_1.ethers.hexlify(ordinals.SatRangesRequest.toBinary({
            outpoint: {
                hash: ethers_1.ethers.toBeArray(addHexPrefix(hash)),
                vout: Number(vout)
            }
        }));
        const byteString = await this._call({
            method: 'satranges',
            input: buffer
        });
        const decoded = ordinals.SatRangesResponse.fromBinary(toBeArray(byteString));
        if (Object.getPrototypeOf(Object.getPrototypeOf(decoded)) === null)
            return null;
        return decoded.satranges.ranges.map((v) => ({
            start: v.start,
            distance: v.distance
        }));
    }
}
exports.MetashrewOrd = MetashrewOrd;
//# sourceMappingURL=rpc.js.map