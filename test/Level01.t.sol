// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Level01} from "../src/Level01.sol";

contract Level01Test is Test {
    Level01 public level01;

    function setUp() public {
        level01 = new Level01();
    }

    function test_solution() public view {
        assertEq(level01.solution(), 42);
    }
}
