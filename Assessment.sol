// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LuciferToken is ERC20, Ownable {
    // Events for logging minting, burning, and transferring of tokens
    event TokensMinted(address indexed to, uint256 amount);
    event TokensBurned(address indexed from, uint256 amount);
    event TokensTransferred(address indexed from, address indexed to, uint256 amount);

    constructor(address initialOwner) Ownable(initialOwner) ERC20('Lucifer', 'LUC') {}

   
    function mintTokens(address recipient, uint256 amount) public onlyOwner {
        _mint(recipient, amount);
        emit TokensMinted(recipient, amount);  
    }

    
    function burnTokens(uint256 amount) public {
        _burn(_msgSender(), amount);
        emit TokensBurned(_msgSender(), amount);  
    }

    
    function transferTokens(address recipient, uint256 amount) public returns (bool) {
        bool success = transfer(recipient, amount);
        if (success) {
            emit TokensTransferred(_msgSender(), recipient, amount);  // Emit the transfer event
        }
        return success;
    }
}
