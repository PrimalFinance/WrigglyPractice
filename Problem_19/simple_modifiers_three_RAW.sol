// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleModifiersThree {
    address public owner;
    uint256 public myNumber;

    constructor() {
        // TODO
    }

    modifier onlyOwner() {
        // TODO
        _;
    }

    function setNumber(uint256 _number) external onlyOwner {
        // TODO
    }

    function getNumber() external view returns (uint256) {
        // TODO
    }
}
