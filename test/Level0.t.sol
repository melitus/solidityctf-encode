// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Level0} from "../src/Level0.sol";

contract Level01Test is Test {
    Level0 public level0;

    function setUp() public {
        level0 = new Level0();
    }

    function test_solution() public view {
        assertEq(level0.solution(), 42);
    }
}
