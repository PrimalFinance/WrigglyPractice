// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StringStorage {
    string private storedString;

    // NOTE: The memory keyword is used in the parameter. This means the data passed in the parameter is stored in "memory" and not on the blockchain.
    // This has a few advantages, the largest being it is *more gas efficient*.
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
