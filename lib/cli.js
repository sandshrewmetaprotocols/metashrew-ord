"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.run = void 0;
const rpc_1 = require("./rpc");
const yargs_1 = __importDefault(require("yargs"));
yargs_1.default.parserConfiguration({
    'parse-numbers': false
});
const args = yargs_1.default.parse();
console.log(args);
const client = new rpc_1.MetashrewOrd({
    baseUrl: args.url || process.env.METASHREW_VIEW_URL || 'http://localhost:8080',
    ...args
});
async function run() {
    const result = await client[args._[0]](args);
    console.log(result);
}
exports.run = run;
//# sourceMappingURL=cli.js.map