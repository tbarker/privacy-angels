var AllowAllAngel = artifacts.require("AllowAllAngel");
var AllowAllAngelFactory = artifacts.require("AllowAllAngelFactory");

contract('AllowAllAngel', accounts => {
    it("Should not fail", async () => {
        let factory = await AllowAllAngelFactory.deployed();
        let angel = await AllowAllAngel.new(accounts[0], accounts[1], 0x1331, factory.address);
        assert.equal((await angel.canTransferTo.call("foo.com")), true);
    });
});
