const MyCrowdsale = artifacts.require("./MyCrowdsale.sol");
const SimpleToken = artifacts.require("./SimpleToken.sol");

module.exports = function(deployer, network, accounts) {
    // ERC20パラメーター
    const name = "SimpleToken";
    const symbol = "ST";
    const decimals = 18;
    const initSupply = web3.utils.toBN(10*(10**decimals));
    // Crowdsaleパラメーター
    const rate = web3.utils.toBN(1);
    const wallet = accounts[0];

    return deployer.then(() => {
        // ERC20トークンのデプロイ
        return deployer.deploy(
            SimpleToken,
            name,
            symbol,
            decimals,
            initSupply
        );
    }).then(() => {
        return deployer.deploy(
            MyCrowdsale,
            rate,
            wallet,
            SimpleToken.address
        );
    }).then(()=>{
        // クラウドセールコントラクトに発行したトークンを送信
        return SimpleToken.deployed().then(instance => {
            instance.transfer(MyCrowdsale.address, initSupply, {from:accounts[0]})
        });
    })
}