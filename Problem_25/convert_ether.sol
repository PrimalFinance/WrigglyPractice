// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherConverter {
    // NOTE: 1 ether equals 1.000,000,000,000,000,000 wei.
    // That is 1 ether equals 10^18. Or 1 followed by 18 zeros.
    function etherToWei(uint256 etherAmount) public pure returns (uint256) {
        // TODO
        // Equation to turn ether to wei.
        // For example: 0.5 ether equals 500,000,000,000,000,000 wei.
        // So we multiply the ether amount by the wei conversion.
        return etherAmount * (10 ** 18);

        // NOTE the function also could have been written like this.
        /* 
        uint256 weiAmount = etherAmount * 1e18; 
        return weiAmount;
        */
    }

    function weiToEther(uint256 weiAmount) public pure returns (uint256) {
        // TODO
        // Convert wei amount to the ether amount.
        // For example: 500,000,000,000,000,000 wei equals 0.5 ether.
        return weiAmount / (10 ** 18);

        // NOTE the function also could have been written like this.
        /* 
        uint256 etherAmount = weiAmount * 1e18; 
        return etherAmount;
        */
    }
}
