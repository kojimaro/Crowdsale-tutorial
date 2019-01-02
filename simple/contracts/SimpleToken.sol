pragma solidity >=0.4.21 <0.6.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract SimpleToken is ERC20, ERC20Detailed {
    constructor(
        string name,
        string symbol,
        uint8 decimals,
        uint initSupply
    )
        ERC20Detailed(name, symbol, decimals)
        public
    {
        _mint(msg.sender, initSupply);
    }
}