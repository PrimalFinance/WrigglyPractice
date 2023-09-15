// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Team {
    int[16] public teamPlayers;

    function initializeTeam() public {
        for (uint i = 0; i < teamPlayers.length; i++) {
            teamPlayers[i] = -1;
        }
    }

    function getTeamPlayers() public view returns (int[16] memory) {
        return teamPlayers;
    }

    function selectJerseyNumber(uint jerseyNumber) public view returns (int) {
        require(
            jerseyNumber < teamPlayers.length,
            "Jersey number out of range."
        );
        return teamPlayers[jerseyNumber];
    }

    function addPlayer(int playerAddress, uint jerseyNumber) public {
        //  Require that the jersey number is not greater than the number of players on the team.
        require(
            jerseyNumber < teamPlayers.length,
            "Jersey number out of range."
        );
        // If the jerseyNumber has not yet been assigned it should equal -1. Otherwise we do not want to assign the jersey.
        require(
            teamPlayers[jerseyNumber] == -1,
            "Jersey number already assigned."
        );
        teamPlayers[jerseyNumber] = playerAddress;
    }

    function removePlayer(uint jerseyNumber) public {
        // Delete the address at the index of jerseyNumber.
        delete teamPlayers[jerseyNumber];
    }

    function updatePlayerAddress(int newAddress, uint jerseyNumber) public {
        // Update the index of the jerseyNumber with the newAddress data.
        teamPlayers[jerseyNumber] = newAddress;
    }
}
