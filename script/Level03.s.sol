// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {BaseScript} from "./DeployBase.s.sol";
import {console2 as console} from "forge-std/console2.sol";
import {Level03} from "../src/Level03.sol";

contract DeployLevel03 is BaseScript {
   address public deploymentAddress;
     function run() external {
        startBroadcast();
        deploymentAddress = address(new Level03());
        vm.stopBroadcast();

        console.log("Deployed contract:", deploymentAddress);
    }
}
