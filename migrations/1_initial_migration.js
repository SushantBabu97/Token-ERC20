const MyFirstToken = artifacts.require("MyFirstToken");

module.exports = function (deployer) {
  deployer.deploy(MyFirstToken);
};
