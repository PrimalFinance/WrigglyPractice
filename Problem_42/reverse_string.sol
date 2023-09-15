// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StringManipulation {
    string public message;

    function setMessage(string memory _newMessage) public {
        // TODO: ensure _newMessage is not an empty string
        require(bytes(_newMessage).length > 0, "Empty string");
        // TODO: set message
        message = _newMessage;
    }

    function reverseMessage() public view returns (string memory) {
        // TODO: add code here to reverse the order of characters in the `message` string

        // Create bytes variable in memory that holds the "message" variable in bytes form.
        bytes memory messageBytes = bytes(message);
        // Get the length of the message.
        uint len = messageBytes.length;
        // Create new bytes object that is the same size as the message.
        // This will hold the reversed characters for our message.
        bytes memory reversedBytes = new bytes(len);
        // Iterate through every character in the message.
        for (uint i = 0; i < len; i++) {
            // This will get the characters in reverse order.
            // For example: When i = 0, len - 1 - 0, means it will grab the "-1" index, or the last element in the message.
            // For example: When i = 1, len - 1 - 1, means it will grab the "-2" index, or the second to last element in the message.
            // For example: When i = 5, len - 1 - 5, means it will grab the "-6" index, or the sixth to last element in the message.
            reversedBytes[i] = messageBytes[len - 1 - i];
        }
        // Convert the bytes data type back to string.
        return string(reversedBytes);
    }
}
