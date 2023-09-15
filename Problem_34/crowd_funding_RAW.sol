// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Crowdfunding {
    address public owner;
    uint public totalRaised;

    constructor() {
        // TODO: set the contract creator as the owner
    }

    function getOwner() public view returns (address) {
        // TODO
    }

    function donate() public payable {
        // TODO: update the totalRaised variable with the amount of ether donated
    }

    function getTotalRaised() public view returns (uint) {
        return totalRaised;
    }

    function withdrawFunds() public restricted {
        // TODO: allow the owner to withdraw the entire balance of the contract
    }

    modifier restricted() {
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }
}
