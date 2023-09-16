// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Voting {
    string[] public proposals;
    mapping(uint256 => uint256) public votes;
    mapping(address => bool) public voted;

    constructor() {
        proposals = ["Proposal 1", "Proposal 2"];
    }

    function vote(uint256 proposal) public {
        // Check that the address of the sender has not already voted.
        require(!voted[msg.sender], "Already voted");
        require(proposal < proposals.length, "Invalid proposal");
        // Set the index in the "voted" mapping to "true".
        voted[msg.sender] = true;
        // Increment the number of votes for the proposal within the "votes" mapping.
        votes[proposal]++;
    }

    function getProposal(uint256 proposal) public view returns (string memory) {
        // Require the proposal to be within the bounds of the length.
        require(proposal < proposals.length, "Invalid proposal");
        // Return the proposal at the index of the proposal passed in the index.
        return proposals[proposal];
    }

    function getVotes(uint256 proposal) public view returns (uint256) {
        // Require that the proposal passed in the parameter is less than the total length of the mapping.
        // This is to ensure that an invalid proposal is not passed.
        require(proposal < proposals.length, "Invalid proposal");
        // Return the number of votes stored at the index of the proposal within the "votes" mapping.
        return votes[proposal];
    }
}
