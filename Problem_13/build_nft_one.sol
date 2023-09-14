// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract MyNFT is ERC721 {
    using SafeMath for uint256;

    mapping(uint256 => address) private _tokenOwner;

    constructor(
        string memory name,
        string memory symbol
    ) ERC721(name, symbol) {}

    function mint(address to, uint256 tokenId) public {
        // TODO
        // Assign the index of "tokenId" to the address in the "to" parameter.
        _tokenOwner[tokenId] = to;
    }

    function ownerOf(
        uint256 tokenId
    ) public view virtual override returns (address) {
        // TODO
        // Return the address at the index of "tokenId".
        return _tokenOwner[tokenId];
    }
}
