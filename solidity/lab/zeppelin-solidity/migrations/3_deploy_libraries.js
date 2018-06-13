module.exports = function(deployer) {
  deployer.deploy(SafeMathLib);
  deployer.link(SafeMathLib, ERC20Lib);
  deployer.deploy(ERC20Lib);
  deployer.link(ERC20Lib, [StandardToken, StandardTokenMock]);
  deployer.deploy(StandardToken);
  deployer.deploy(StandardTokenMock);
};
