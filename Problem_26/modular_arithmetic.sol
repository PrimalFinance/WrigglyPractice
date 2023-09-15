// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Test {
    function callAddMod(
        uint256 a,
        uint256 b,
        uint256 c
    ) public pure returns (uint) {
        // TODO
        // Implement the addmod function using all of the parameters. bn
        return addmod(a, b, c);
    }

    function callMulMod(
        uint256 a,
        uint256 b,
        uint256 c
    ) public pure returns (uint) {
        // TODO
        // Implement the mulmod function using all of the parameters.
        return mulmod(a, b, c);
    }
}
