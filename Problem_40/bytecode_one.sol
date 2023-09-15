// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract BytecodeGetter {
    function getBytecode() public view returns (bytes memory) {
        bytes memory bytecode;
        assembly {
            // TODO
            // Get the size of the code
            let size := codesize()

            // Allocate memory for the bytecode
            bytecode := mload(0x40)

            // Store the length in the first 32 bytes
            mstore(bytecode, size)

            // Copy the bytecode to the memory
            extcodecopy(address(), add(bytecode, 0x20), 0, size)

            // Update the free memory pointer
            mstore(0x40, add(bytecode, add(0x20, size)))
        }
        return bytecode;
    }
}
