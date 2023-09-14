// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Pool {
    //TODO: Create enum State
    enum State {
        Initialized,
        Finalized,
        Deactivated
    }
    State public poolState;

    constructor() {
        //TODO: Set poolState to a valid state
        // When the contract is created, this constructor will set the poolState to "Initialized."
        poolState = State.Initialized;
    }

    /**
        @dev   Checks if the pool is in the valid state (Initialized).
        @return True if the pool is in the valid state, false otherwise.
    */
    function isValidState() public view returns (bool) {
        //TODO
        // Return a boolean that represents if the poolState is initialized.
        // If it is not, it will return false.
        return poolState == State.Initialized;
    }
}
