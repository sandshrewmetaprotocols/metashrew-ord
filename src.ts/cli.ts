import { MetashrewOrd } from "./rpc";
import yargs from "yargs";
yargs.parserConfiguration({
  'parse-numbers': false
});

const args = yargs.parse();

console.log(args);

const client = new MetashrewOrd({
  baseUrl: args.url || process.env.METASHREW_VIEW_URL || 'http://localhost:8080',
  ...args
});

export async function run(): Promise<void> {
  const result = await client[args._[0]](args);
  console.log(result);
}
