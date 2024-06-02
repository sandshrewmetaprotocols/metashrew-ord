#!/usr/bin/env node
const { run } = require('../lib/cli');

(async () => {
  await run();
})().catch((err) => console.error(err));
