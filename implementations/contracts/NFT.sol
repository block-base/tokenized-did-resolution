// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFT is ERC721 {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIdTracker;

  constructor() public ERC721("DidResolutionToken", "DRT") {
    _setBaseURI("https://erc721.netlify.app/metadata/contents/mock/");
  }

  function faucet(address to) public {
    _mint(to, _tokenIdTracker.current());
    _tokenIdTracker.increment();
  }
}
