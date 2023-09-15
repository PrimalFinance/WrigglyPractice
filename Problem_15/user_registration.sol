// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract UserRegistration {
    // Define a struct to hold user information
    struct UserInfo {
        string name;
        string email;
    }

    // Define a mapping to store user information
    mapping(address => UserInfo) private userMapping;

    // Define an event to emit when a new user is registered
    event NewUserRegistered(
        address indexed userAddress,
        string name,
        string email
    );

    // Define the contract owner
    address public owner;

    // Constructor to set the contract owner
    constructor() {
        owner = msg.sender;
    }

    // Define a modifier to restrict certain functions to the owner of the contract
    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    // Define a function to register user information
    function registerUser(string memory _name, string memory _email) public {
        // TODO: Store user information in the mapping
        // Create an object for a new user.
        UserInfo memory newUser = UserInfo(_name, _email);
        // Assign the "UserInfo" object to the mapping of the address that called this function (msg.sender).
        userMapping[msg.sender] = newUser;
        // TODO: Emit event to notify that a new user is registered
        emit NewUserRegistered(msg.sender, _name, _email);
    }

    // Define a function to retrieve user information
    function getUserInfo()
        public
        view
        returns (string memory name, string memory email)
    {
        // TODO: Retrieve user information from the mapping
        name = userMapping[msg.sender].name;
        email = userMapping[msg.sender].email;
    }

    // Define a function to update user information
    function updateUserInfo(string memory _name, string memory _email) public {
        // TODO: Update user information in the mapping
        // Check if the address is in the userMapping. This is accomplished by checking if the length of the object in bytes is greater than 0.
        // If the length of the object is 0, that means that data has not been entered yet.
        require(
            bytes(userMapping[msg.sender].name).length > 0,
            "User not registered"
        );
        // Update the fields at the index of the address within the user mapping.
        userMapping[msg.sender].name = _name;
        userMapping[msg.sender].email = _email;
    }

    // Define a function to delete user information
    function deleteUser() public {
        // TODO: Delete user information from the mapping
        delete userMapping[msg.sender];
    }
}
