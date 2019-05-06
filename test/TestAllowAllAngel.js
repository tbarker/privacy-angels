const AllowAllAngel = artifacts.require('AllowAllAngel');
const AllowAllAngelFactory = artifacts.require('AllowAllAngelFactory');

contract('AllowAllAngel', (accounts) => {
  it('Should not fail', async () => {
    const factory = await AllowAllAngelFactory.deployed();
    const angel = await AllowAllAngel.new(accounts[0], accounts[1], '0x1331', factory.address);
    assert.equal((await angel.canTransferTo.call('0x6e656f')), true);
  });

  it('Should allow everything transitively', async () => {
    const factory = await AllowAllAngelFactory.deployed();
    const angel = await AllowAllAngel.new(accounts[0], accounts[1], '0x1331', factory.address);
    await angel.declareTransferTo('0x6e656f', accounts[2]);
  });
});
