// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

abstract contract Solution {
    function func1() public view returns (uint) {
        return 100;
    }

    // func2 needs to implemented in a derived contract for this problem.
    function func2() public view virtual returns (uint);
}

// This is a derived child contract from the parent contract "Solution".
contract ChildContract is Solution {
    // This implementation of func2 will override the implementation from the parent contract.
    function func2() public view override returns (uint) {
        return 100;
    }
}
