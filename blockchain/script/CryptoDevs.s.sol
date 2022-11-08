// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/CryptoDevs.sol";

contract CryptoDevsScript is Script {
    address constant WHITELIST_CONTRACT_ADDRESS =
        0x3DE66F019796aD2788265DCd8A3CEfBB0a42ab6F;
    string constant METADATA_URL =
        "https://nft-collection-sneh1999.vercel.app/api/";

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        CryptoDevs nft = new CryptoDevs(
            METADATA_URL,
            WHITELIST_CONTRACT_ADDRESS
        );
        vm.stopBroadcast();
    }
}
