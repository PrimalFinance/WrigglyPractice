// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract WrigglyToken is ERC20 {
    using SafeMath for uint256;

    // TODO: Create mapping to keep track of the balance of each address
    mapping(address => uint256) private balances;

    address public owner;

    constructor() ERC20("My Token", "MTKN") {
        // TODO
        // Set the owner of the token to the address that deployed the contract.
        owner = msg.sender;
    }

    function _mint(uint256 amount) public {
        // TODO
        // Using the "balances" mapping, assign the address that called this function with the amount of tokens specified.
        require(msg.sender == owner, "Only the owner can mint new tokens.");
        balances[msg.sender] = amount;
    }

    function _burn(uint256 amount) public {
        // TODO
        require(balances[msg.sender] > amount, "Burn amount exceeds balance.");
        balances[msg.sender] -= amount;
    }

    function getBalance() public view returns (uint256) {
        // TODO
        return balances[msg.sender];
    }
}
