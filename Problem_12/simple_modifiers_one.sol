// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleHash {
    uint256 public value;

    function incrementValue() public {
        // TODO
        // Increment the contract variable "value".
        ++value;
    }

    function getValue() public view returns (uint256) {
        // TODO
        // Return the contract variable "value".
        return value;
    }

    function addNums(uint256 a, uint256 b) public pure returns (uint256) {
        // TODO
        // Create new variable uint256 "sum" to hold the sum of the addition operation. Then return the variable.
        uint256 sum = a + b;
        return sum;
    }
}

/* 
public: This modifier makes the function accessible from outside the contract. 
        It generates a public getter function that can be used to retrieve the value of any public state variable.

private: This modifier makes the function only accessible from within the contract. 
         It cannot be called from outside the contract or inherited contracts.

external: This modifier is used for functions that are meant to be called from outside the contract.
          It saves gas by not creating a context for the function call.

internal: This modifier makes the function accessible only from within the contract and any contracts that inherit from it.
          It cannot be called from outside the contract hierarchy.


In addition to these modifiers, there are other modifiers that can be used to specify the function's visibility, state mutability, and other properties. 
For example, the view modifier is used to indicate that the function does not modify the contract's state, 
and the payable modifier is used to indicate that the function can receive Ether as part of the transaction.


*/
