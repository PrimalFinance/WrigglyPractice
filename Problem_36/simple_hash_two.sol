// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Solution {
    function ripemdHash(string memory _message) public pure returns (bytes20) {
        // TODO
        // Create a "bytes20" variable to hold the hash value.
        // Abi encoding is done to convert string to bytes.
        bytes20 hashValue = ripemd160(abi.encodePacked(_message));
        return hashValue;
    }
}