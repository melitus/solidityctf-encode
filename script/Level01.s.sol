// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {BaseScript} from "./DeployBase.s.sol";
import {console2 as console} from "forge-std/console2.sol";
import {Level01} from "../src/Level01.sol";

contract DeployLevel01 is BaseScript {
   address public deploymentAddress;
     function run() external {
        startBroadcast();
        deploymentAddress = address(new Level01());
        vm.stopBroadcast();

        console.log("Deployed contract:", deploymentAddress);
    }
}
