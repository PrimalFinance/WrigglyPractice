// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Lottery {
    struct Ticket {
        uint id;
        address owner;
    }

    Ticket[100] public tickets;
    uint public ticketCount;
    address payable winner;

    constructor(uint _ticketCount) {
        // TODO: Initialize ticketCount
    }

    function buyTicket(uint id) public payable {
        // TODO: Implement the buyTicket function. This function should create a new ticket with the given ID and add it to the tickets array.
        // The function should also increment the ticketCount variable and transfer the ticket price (1 ether) from the buyer to the contract.
    }

    function drawWinner() public {
        // TODO: Implement the drawWinner function. We have already defined a randomly generated winnerIndex.
        //       This owner of this ticket will be set as the winner of the lottery.
        // The function should also transfer the entire balance of the contract to the winner's address and reset the ticketCount variable to 0.
        uint winnerIndex = uint(
            keccak256(
                abi.encodePacked(
                    block.timestamp,
                    block.prevrandao,
                    tickets.length
                )
            )
        ) % tickets.length;
    }

    function getWinner() public view returns (address) {
        // TODO: Require there has been a winner and return the winner
    }
}
