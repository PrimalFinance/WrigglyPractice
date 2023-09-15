// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Solution {
    uint public total;
    uint gasUsed;

    function sumIfEvenAndLessThan99(uint[] memory nums) external {
        uint startGas = gasleft();
        // Calculate the length of "nums" array only once and store it in "length" variable.
        // This is to avoid recalculating it in each iteration of the loop.
        uint length = nums.length;
        // We use a separate variable "currentTotal" to keep track of the sum.
        // This reduces the number of times we need to access the state variable of "total".
        // Which results in a more gas efficient contract.
        uint currentTotal = total;

        for (uint i = 0; i < length; i++) {
            uint num = nums[i];
            // Instead of creating separate boolean variables to track these conditions, just check it in the "if" statement.
            if (num < 99 && num % 2 == 0) {
                currentTotal += num;
            }
        }
        // Update contract variable with the local "currentTotal" variable.
        total = currentTotal;
        gasUsed = startGas - gasleft();
    }

    function gasOptimized(uint optimizedGas) public view returns (bool) {
        if (gasUsed < optimizedGas) {
            return true;
        } else {
            return false;
        }
    }
}
