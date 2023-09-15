// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract SafeMathExample {
    using SafeMath for uint256;

    uint256 public value;
    address public owner;

    // Constructor to assign the owner of the contract when the contract is deployed.
    constructor() {
        owner = msg.sender;
    }

    // Define a modifier to restrict certain function to the owner of the contract.
    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner.");
        _;
    }

    // Make the "add" function only accessible to the owner of the contract.
    function add(uint256 x, uint256 y) public onlyOwner {
        // TODO
        value = x + y;
    }

    function sub(uint256 x, uint256 y) public {
        // TODO
        // Assign the value to the difference of x & y.
        value = x - y;
    }

    function mul(uint256 x, uint256 y) public {
        // TODO
        value = x * y;
    }

    function div(uint256 x, uint256 y) public {
        // TODO
        value = x / y;
    }

    function get() public view returns (uint256) {
        // TODO
        // Return the value of "value".
        return value;
    }
}
