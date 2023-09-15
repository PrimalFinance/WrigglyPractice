// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract SupplyChain {
    address public owner;

    struct Product {
        string name;
        address owner;
    }

    mapping(uint => Product) public products;
    uint public productCount;

    constructor() {
        // TODO: set the contract creator as the owner
    }

    function registerProduct(string memory name) public {
        // TODO: create a new Product with a unique ID and initialize the owner to the caller
    }

    function transferProduct(uint id, address newOwner) public {
        // TODO: transfer ownership of the product with the corresponding ID to the new owner
        // The function should revert the transaction if the caller is not the current owner of the product.
    }

    function getProductOwner(uint id) public view returns (address) {
        // TODO: return the address of the current owner of the product with the corresponding ID in the `products` mapping
    }
}
