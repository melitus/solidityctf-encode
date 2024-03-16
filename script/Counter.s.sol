// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import {DeployBase} from "./DeployBase.s.sol";
import {console2 as console} from "forge-std/console2.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is DeployBase {
   address public deploymentAddress;
     function run() external {
        startBroadcast();
        deploymentAddress = address(new Counter());
        vm.stopBroadcast();

        console.log("Deployed contract:", deploymentAddress);
    }
}
