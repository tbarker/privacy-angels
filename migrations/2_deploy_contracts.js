var AllowAllAngel = artifacts.require("./AllowAllAngel.sol");
var AllowAllAngelFactory = artifacts.require("./AllowAllAngelFactory.sol");

module.exports = function(deployer, network, accounts) {
  return deployer.deploy(AllowAllAngelFactory);
};
