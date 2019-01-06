pragma solidity ^0.5.0;

// Crowdsale.solをインポート
import 'openzeppelin-solidity/contracts/crowdsale/Crowdsale.sol';

// Crowdsale.solを継承
contract MyCrowdsale is Crowdsale {
    /**
     * @param rate weiあたりで交換できるトークンの数
     * rate=1なら1ETH(10^18) = 1ST(10^18)
     * rete=10なら0.1ETH(10^18) = 1ST(10^18)
     * @param wallet トークンと交換されたETHを集めるアカウントアドレス
     * @param token 売り出すERC20トークンのコントラクトアドレス
     */
    constructor(
        uint256 rate, 
        address payable wallet, 
        IERC20 token
    ) 
        Crowdsale(rate, wallet, token) 
        public 
    {}
}