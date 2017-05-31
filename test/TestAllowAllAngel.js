var AllowAllAngel = artifacts.require("AllowAllAngel");
var AllowAllAngelFactory = artifacts.require("AllowAllAngelFactory");

contract('AllowAllAngel', function(accounts) {
    it("Should not fail", () => {
        return AllowAllAngelFactory.deployed().then(factory => 
            AllowAllAngel.new(
                accounts[0],
                accounts[1],
                0x1331,
                factory.address
            ))
            .then(angel => {
                angel.canTransferTo.call("foo.com").then(_ => assert.equal(true, _));
            }
        )
    });
});
