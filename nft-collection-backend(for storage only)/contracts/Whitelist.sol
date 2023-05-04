// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// NFTee is  ERC721 signifies that the contract we are creating imports ERC721 and follows ERC721 contract from openzeppelin
contract Whitelist {

    uint8 public maxWhitelistedAddresses;
    mapping(address => bool) public whitelistedAddresses;
    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses){
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public{
        require(!whitelistedAddresses[msg.sender], "Sender has been Whitelisted already");
        require(numAddressesWhitelisted < maxWhitelistedAddresses,"More Address can't be add limit reached");
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1; 
    }
}
//Whitelist Contract Address: 0xC371598e65439EEa6390283fFCbDf5a2a948DA24
//Whitelist Contract Address: 0xa222a6e18ac6CA63C9C791b0acd81DCE8D9295a4