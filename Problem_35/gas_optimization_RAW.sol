// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Solution {
    uint public total;
    uint gasUsed;

    function sumIfEvenAndLessThan99(uint[] memory nums) external {
        uint startGas = gasleft();
        for (uint i = 0; i < nums.length; i += 1) {
            bool isEven = nums[i] % 2 == 0;
            bool isLessThan99 = nums[i] < 99;
            if (isEven && isLessThan99) {
                total += nums[i];
            }
        }
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
