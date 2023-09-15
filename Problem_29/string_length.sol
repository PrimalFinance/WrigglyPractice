// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringLength {
    function getLength(string memory str) public pure returns (uint) {
        // TODO
        // Create a bytes object in memory (to be gas efficient), and assign it the value of the "str" parameter.
        // The "str" parameter should also be converted to bytes so we can get the length.
        bytes memory strBytes = bytes(str);
        // Get the length of the bytes object and return it.
        return strBytes.length;
    }
}
