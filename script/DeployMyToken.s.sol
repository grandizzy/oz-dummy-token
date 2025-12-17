// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/MyToken.sol";

contract DeployMyToken is Script {
    function run() external {

        vm.startBroadcast();

        MyToken token = new MyToken(
            "My Token",
            "MTK",
            1_000_000 ether // 1M tokens (18 decimals)
        );

        vm.stopBroadcast();

        console.log("Token deployed at:", address(token));
    }
}

