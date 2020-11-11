## Token Specification

```
ERC***

contract {
  address owner;
  address signer;
  address minter;
  ownerOf(uint256 _tokenId) returns (address holder);

  getEachKey() //TBD
  supportsInteface() //TBD
}
```

This contract must provide each role address.
