// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Gas {
    uint public c = 1;

    function calculateGas() external returns (uint _gasUsed) {
        // Get the gas at the start of the operation.
        uint startGas = gasleft();
        // Perform incrementing operation.
        ++c;
        // Calculate the gas used.
        _gasUsed = startGas - gasleft();
    }
}
