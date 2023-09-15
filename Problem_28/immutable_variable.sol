// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Immutable {
    // coding convention to uppercase constant variables
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }

    // NOTE: We removed the setter function "setVar()". This is because "MY_ADDRESS" and "MY_UINT" are *constant* variables.
    //       Constant variables can only be assigned in the constructor. They *cannot* be changes after the contract is deployed by "setter" functions.
    //       This is why we remove the "setVar()" function and instead assign the data within the constructor.

    // NOTE: The "getter" function may remain the same, since no data is being changed, only returned.
    function getVar() public view returns (address, uint) {
        return (MY_ADDRESS, MY_UINT);
    }
}
