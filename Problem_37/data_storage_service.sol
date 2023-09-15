// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DataStorage {
    mapping(address => string[]) public userData;

    function storeData(string memory data) public payable {
        // TODO
        // Check that the data storage fee is greater than 0.0 ether. (as per the directions).
        require(
            msg.value > 0.0 ether,
            "Data storage fee must be greater than 0"
        );
        // Add the data to the sender's "userData" array.
        userData[msg.sender].push(data);
    }

    function getData(uint256 index) public view returns (string memory) {
        // TODO
        // Require that the index is not greater than the length of the sender's array.
        require(index < userData[msg.sender].length, "Index out of bounds");
        // Return the data of the sender's array at the specified index.
        return userData[msg.sender][index];
    }

    function getDataCount() public view returns (uint256) {
        // TODO
        // Return the length of the sender's array.
        return userData[msg.sender].length;
    }
}
