// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringComparator {
    function compareStrings(
        string memory a,
        string memory b
    ) public pure returns (bool) {
        // TODO
        // Since Solidity does not natively support comparisons between strings,
        // we need to convert these strings to another type that Solidity can handle.
        // So we hash the each string and compare the hashes.
        bytes32 hashA = keccak256(abi.encodePacked(a));
        bytes32 hashB = keccak256(abi.encodePacked(b));
        // Compare the hash values to check if the strings are equal.
        // Will return "true" if the statement below is True, or "false" if the hash values are not equal.
        return hashA == hashB;
    }
}
