// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleModifiersThree {
    address public owner;
    uint256 public myNumber;

    constructor() {
        // TODO
        // When the contract is deployed set the owner the the contract deployer.
        owner = msg.sender;
    }

    modifier onlyOwner() {
        // TODO
        require(msg.sender == owner, "Caller is not owner.");
        _;
    }

    function setNumber(uint256 _number) external onlyOwner {
        // TODO
        // Assign the value in the parameter to the contract variable "myNumber".
        myNumber = _number;
    }

    function getNumber() external view returns (uint256) {
        // TODO
        // Return the value stored in "myNumber".
        return myNumber;
    }
}
