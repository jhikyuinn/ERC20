const Money= artifacts.require("Money");

module.exports = function(deployer, network, accounts) {
    deployer.deploy(Money)
};