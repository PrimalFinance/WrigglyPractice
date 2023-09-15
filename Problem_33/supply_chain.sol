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
        owner = msg.sender;
    }

    function registerProduct(string memory name) public {
        // TODO: create a new Product with a unique ID and initialize the owner to the caller
        // Since we are registering a new product, increment the "productCount".
        // This productCount will be used for the uniqueId.
        productCount++;
        // At the index of "productCount" within the "products" mapping, assign a new "Products" object.
        // The name of the product is passed in the functions parameter, and the owner of the product is the address that called this function.
        products[productCount] = Product(name, msg.sender);
    }

    function transferProduct(uint id, address newOwner) public {
        // TODO: transfer ownership of the product with the corresponding ID to the new owner
        // The function should revert the transaction if the caller is not the current owner of the product.
        require(msg.sender == products[id].owner, "Invalid Product Owner");
        // At the mapping that matches the "id" assign the "owner" field to the address in "newOwner".
        products[id].owner = newOwner;
    }

    function getProductOwner(uint id) public view returns (address) {
        // TODO: return the address of the current owner of the product with the corresponding ID in the `products` mapping
        return products[id].owner;
    }
}
