// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Solution {
    struct Item {
        string name;
        uint256 price;
    }

    Item[] public inventory;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function addItemToInventory(
        string memory _name,
        uint256 _price
    ) public onlyOwner {
        // TODO
        // Push new "Item" object to the "inventory" array.
        // The "item" object will hold the data passed in the parameter.
        inventory.push(Item(_name, _price));
    }

    modifier onlyOwner() {
        // This modifier will ensure that only the owner of the contract can access functions with this modifier.
        require(msg.sender == owner, "Only owner can call this function.");
        _;
    }

    function getInventory() public view returns (Item[] memory) {
        // TODO
        // Return the entire inventory array of "Item" datatype.
        return inventory;
    }

    function clearInventory() private onlyOwner {
        // TODO
        // Use the keyword "delete" to delete the "inventory" object.
        delete inventory;
    }
}
