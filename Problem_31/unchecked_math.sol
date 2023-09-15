// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract UncheckedMath {
    function add(uint y) external pure returns (uint) {
        // Create an unsigned integer to hold the result.
        uint result;
        // Create "unchecked" keyword. This should be used when the programmer *knows* that there will not be any overflow.
        // When the programmer knows there will be no overflow, the sign of the data type does *not* need to be checked.
        // This results in more optimized gas costs, by avoiding the checks.
        unchecked {
            result = (2 ** 256 - 1) + y;
        }
        return result;
    }

    function sub(uint x, uint y) external pure returns (uint) {
        // Create an unsigned integer to hold the result.
        uint result;
        // Create unchecked keyword.
        unchecked {
            result = x - y;
        }
        return result;
    }
}
