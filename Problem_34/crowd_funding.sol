// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Crowdfunding {
    address public owner;
    uint public totalRaised;

    constructor() {
        // TODO: set the contract creator as the owner
        owner = msg.sender;
    }

    function getOwner() public view returns (address) {
        // TODO
        return owner;
    }

    function donate() public payable {
        // TODO: update the totalRaised variable with the amount of ether donated
        require(msg.value > 0, "Please enter an amount greater than zero.");
        // Increment the amount of the value raised by the amount sent in the message.
        totalRaised += msg.value;
    }

    function getTotalRaised() public view returns (uint) {
        return totalRaised;
    }

    function withdrawFunds() public restricted {
        // TODO: allow the owner to withdraw the entire balance of the contract
        // Check that the balance of the contract is not 0.
        require(totalRaised > 0, "There are no funds to withdraw.");
        // Transfer the entire balance of the contract to the owner.
        // The "this" keyword accesses the contracts attributes.
        payable(owner).transfer(address(this).balance);
    }

    modifier restricted() {
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }
}
