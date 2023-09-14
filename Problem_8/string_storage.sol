// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StringStorage {
    string private storedString;

    function set(string memory value) public {
        // TODO
        // Set the value of the "storedString" to the parameter value.
        storedString = value;
    }

    function get() public view returns (string memory) {
        // TODO
        // Return the variable "storedString".
        return storedString;
    }
}
