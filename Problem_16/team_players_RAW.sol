// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Team {
    int[16] public teamPlayers;

    function initializeTeam() public {
        for (uint i = 0; i < teamPlayers.length; i++) {
            teamPlayers[i] = -1;
        }
    }

    function getTeamPlayers() public view returns (int[16] memory) {}

    function selectJerseyNumber(uint jerseyNumber) public view returns (int) {}

    function addPlayer(int playerAddress, uint jerseyNumber) public {}

    function removePlayer(uint jerseyNumber) public {}

    function updatePlayerAddress(int newAddress, uint jerseyNumber) public {}
}
