// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {
    uint public creationTime;
    uint public expirationTime;

    constructor() {
        // TODO: Set creationTime to block timestamp
        creationTime = block.timestamp;
    }

    function onTime() public {
        // TODO: Set expirationTime to be after creationTime
        // Set "expirationTime" to 24 hours after the creation time.
        expirationTime = creationTime + 24 hours;
    }

    function expire() public {
        // TODO: Set expirationTime to be before creationTime
        expirationTime = creationTime - 24 hours;
    }

    function isExpired() public view returns (bool) {
        return block.timestamp >= expirationTime;
    }
}
