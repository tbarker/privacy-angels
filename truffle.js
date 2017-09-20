const TestRPC = require("ethereumjs-testrpc");

require('babel-polyfill');
require('babel-register')({
  ignore: /node_modules\/(?!zeppelin-solidity)/
});

module.exports = {
  networks: {
    development: {
      provider: TestRPC.provider(),
      network_id: "*" // Match any network id
    },
    local: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    }
  }
};
