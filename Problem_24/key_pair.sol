// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract KeyPair {
    // Declare a private key variable here
    bytes32 private privateKey;
    bytes32 private publicKey;

    // Declare a function to generate a new key pair
    function generateKeyPair() public returns (bytes32, bytes32) {
        // TODO: Call a function to generate a new private key
        // Call the "generatePrivateKey()" function and get the value for the private key.
        privateKey = generatePrivateKey();
        // TODO: Compute the corresponding public key
        // Call "computePublicKey" by passing the private key as a parameter.
        publicKey = computePublicKey(privateKey);
        // Then return both the public and private keys.
        return (publicKey, privateKey);
    }

    // Implement a function to generate a new private key
    function generatePrivateKey() private returns (bytes32) {
        // TODO: You can use Solidity's built-in cryptographic functions to generate a random private key
        //       Create a bytes32 variable to hold the result of the keccak256 function.
        // NOTE: That to generate the private key, we use the current block timestamp and difficulty to add randomness.
        bytes32 _privateKey = keccak256(
            abi.encodePacked(block.timestamp, block.difficulty)
        );
        return _privateKey;
    }

    // Implement a function to compute the corresponding public key
    function computePublicKey(
        bytes32 _privateKey
    ) private pure returns (bytes32) {
        // TODO: You can use Solidity's built-in cryptographic functions to compute the public key from the private key
        bytes32 _publicKey = keccak256(abi.encodePacked(_privateKey));
        return _publicKey;
    }
}
