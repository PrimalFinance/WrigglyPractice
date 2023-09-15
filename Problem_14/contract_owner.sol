// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Owner {
    address public owner;

    constructor() {
        // Constructors are called when the contract is deployed.
        // This will make the owner of the contract the address that deploys the contract.
        // In this case the sender of the message.
        owner = msg.sender;
    }

    function returnOwner() public view returns (address) {
        // Return the address that is stored in the "owner" variable.
        return owner;
    }
}
