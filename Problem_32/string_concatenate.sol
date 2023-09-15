// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Concatenate {
    function concat(
        string memory str1,
        string memory str2
    ) public pure returns (string memory) {
        // TODO
        // Turn strings from parameters into byte objects.
        bytes memory strBytes1 = bytes(str1);
        bytes memory strBytes2 = bytes(str2);

        // Create new string variable to hold the concatenated string.
        // This new string will be equal in size to the sum of the length of strBytes1 and strBytes2.
        string memory concatStr = new string(
            strBytes1.length + strBytes2.length
        );
        // Turn the concatenated string into the data type "bytes".
        bytes memory concatBytes = bytes(concatStr);

        // Variable to track the current index of "concatBytes".
        uint256 k = 0;
        // For loop that will iterate a number of times equal to the length of "strBytes1".
        for (uint256 i = 0; i < strBytes1.length; i++) {
            // Assign the index of "k" to the value found in "strBytes1" at the index of "i".
            // Character-by-character, the elements of strBytes1 are being copied over to concatBytes.
            concatBytes[k] = strBytes1[i];
            k++;
        }
        // For loop that will iterate a number of times equal to the length of "strBytes2".
        for (uint256 i = 0; i < strBytes2.length; i++) {
            // Continuing where the last for loop left off, concatBytes is now getting elements from "strBytes2" copied over.
            concatBytes[k] = strBytes2[i];
            k++;
        }
        // Turn the concatenated bytes back into a string.
        return string(concatBytes);
    }
}
