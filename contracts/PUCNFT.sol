// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PUCNFT is ERC721, ERC721Burnable, Ownable {

    constructor(address initialOwner)
        ERC721("NFT_SOL_RYAN", "PUC_NFT")
        Ownable(initialOwner)
    {}

    function _baseURI() internal view override virtual returns (string memory) {
        return "http://gateway.pinata.cloud/ipfs/QmeSjSinHpPnmXmspMjwiXyN6zS4E9zccariGR3jxcaWtq/";
    }

    function mint(address to, uint256 tokenId) public {
        _safeMint(to, tokenId);
    }

}
