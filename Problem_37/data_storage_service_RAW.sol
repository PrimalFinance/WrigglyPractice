// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataStorage {
    mapping(address => string[]) public userData;

    function storeData(string memory data) public payable {
        // TODO
    }

    function getData(uint256 index) public view returns (string memory) {
        // TODO
    }

    function getDataCount() public view returns (uint256) {
        // TODO
    }
}
