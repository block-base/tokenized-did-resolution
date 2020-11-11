const NFT = artifacts.require("NFT");

contract("NFT", async (accounts) => {
  it("should able to mint token", async () => {
    const instance = await NFT.deployed();
    await instance.faucet(accounts[0]);
    const balance = await instance.balanceOf(accounts[0]);
    assert.equal(balance.valueOf(), 1);
  });
});
