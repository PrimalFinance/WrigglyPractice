// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {
    uint public creationTime;
    uint public expirationTime;

    constructor() {
        // TODO: Set creationTime to block timestamp
    }

    function onTime() public {
        // TODO: Set expirationTime to be after creationTime
    }

    function expire() public {
        // TODO: Set expirationTime to be before creationTime
    }

    function isExpired() public view returns (bool) {
        return block.timestamp >= expirationTime;
    }
}
