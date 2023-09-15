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
        // Set the ticket count to the argument in the constructor.
        ticketCount = _ticketCount;
    }

    function buyTicket(uint id) public payable {
        // TODO: Implement the buyTicket function. This function should create a new ticket with the given ID and add it to the tickets array.
        // The function should also increment the ticketCount variable and transfer the ticket price (1 ether) from the buyer to the contract.

        // Check that the amount sent in the message is greater than or equal to the ticket price.
        require(msg.value >= 1 ether, "Ticket price is 1 ether.");
        // Push new Ticket object to the tickets array at the index of the "id".
        tickets[id] = Ticket(id, msg.sender);
        // Increment ticketCount to represent that a ticket was bought.
        ticketCount++;
        // Transfer the value in the message to the contract address (accessed through "this").
        payable(address(this)).transfer(msg.value);
    }

    function drawWinner() public {
        // TODO: Implement the drawWinner function. We have already defined a randomly generated winnerIndex.
        //       This owner of this ticket will be set as the winner of the lottery.
        // The function should also transfer the entire balance of the contract to the winner's address and reset the ticketCount variable to 0.

        // Check that tickets have been sold before picking a winner.
        require(ticketCount > 0, "No tickets sold.");
        // Random number generator.
        uint winnerIndex = uint(
            keccak256(
                abi.encodePacked(
                    block.timestamp,
                    block.prevrandao,
                    tickets.length
                )
            )
        ) % tickets.length;
        // Convert owner address of the ticket to a payable type.
        winner = payable(tickets[winnerIndex].owner);
        // Pay the entire balance of the contract to the winnier address.
        payable(winner).transfer(address(this).balance);
    }

    function getWinner() public view returns (address) {
        // TODO: Require there has been a winner and return the winner
        require(winner != address(0), "Please implement drawWinner");
        return winner;
    }
}
