var TestRPC = require("ethereumjs-testrpc");

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
