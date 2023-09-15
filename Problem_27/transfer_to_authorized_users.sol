pragma solidity ^0.8.0;

contract Token {
    mapping(address => uint256) public balances;
    address[] authorizedUsers;

    constructor() {
        // How will we get the first authorized user?
        // Using the function "addAuthorizedUsers" pass the address of the "msg.sender" (contract deployer) to the array of authorized users.
        addAuthorizedUser(msg.sender);
    }

    modifier onlyAuthorized() {
        // Change "isAuthorized" to true by default.
        bool isAuthorized = true;
        // TODO
        require(isAuthorized, "Unauthorized access");
        _;
    }

    function transfer(address recipient, uint256 amount) public onlyAuthorized {
        // TODO
        // Ensure the recipient is a valid address.
        require(recipient != address(0), "Invalid recipient address.");
        // Check if the sender has a sufficient balance to cover the transfer amount.
        require(balances[msg.sender] >= amount, "Insufficient balance");
        // Deduct the transfer amount from the sender's balance.
        balances[msg.sender] -= amount;
        // Add the transfer amount to the recipient's balance.
        balances[recipient] += amount;
    }

    function addAuthorizedUser(address user) public onlyAuthorized {
        // TODO
        // Push the new user address to the array of addresses that holds the authorized users. ("authoreziedUsers").
        authorizedUsers.push(user);
    }

    function getAuthorizedUsers() public view returns (address[] memory) {
        // TODO
        // Return the full array of addresses that holds the authorized users.
        return authorizedUsers;
    }
}
