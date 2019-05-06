const DenyAllAngel = artifacts.require('DenyAllAngel');

contract('DenyAllAngel', (accounts) => {
  it('Should always fail', async () => {
    const angel = await DenyAllAngel.new(accounts[0], accounts[1], '0x1331');
    assert.equal((await angel.canTransferTo.call('0x6e656f')), false);
  });
});
