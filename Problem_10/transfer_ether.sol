// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Solution {
    // TODO: Create event here
    // NOTE: Keyword indexed used here. "indexed" parameters are used because it allows you to
    // efficiently filter and search for specific events in the "Ethereum" blockchain.
    // Indexed parameters are used to improve the performance of event log retrieval.
    // Using an indexed parameter when emitting this event means that the Ethereum client will
    // create an index for the "_to" parameter, making it faster to search for events involving a specific address.
    event EtherTransferred(address indexed _to, uint256 _amount);

    function transfer(address payable _to, uint256 _amount) public {
        // Require that the amount being transferred is less than the balance of the wallet.
        // You cannot transfer more coins than you own.
        require(_amount <= address(this).balance, "Insufficient balance");
        // TODO: transfer ether here
        // Transfer the amount of ether to the "_to" address, if the parameters are met above.
        _to.transfer(_amount);
        // TODO: emit event here
        // Emit an event that the ether is transferred, to the "_to" address for the "_amount" desired.
        emit EtherTransferred(_to, _amount);
    }

    function getBalance(
        address payable _address
    ) public payable returns (uint256) {
        // Return the balance of the address passed in the parameter.
        return _address.balance;
    }
}
