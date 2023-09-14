// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleHash {
    bytes32 public hashValue;

    function hash(string memory _message) public {
        // TODO
        // NOTE: keccak256 hashing algorithm require the input string to first be converted to bytes.
        //       That is why "abi.encodePacked()" is used, so it can convert the string to a bytes data type object.
        hashValue = keccak256(abi.encodePacked(_message));
    }

    function getHashValue() public view returns (bytes32) {
        // TODO
        // Return the value of the contract variable "hashValue"
        return hashValue;
    }
}
