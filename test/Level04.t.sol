// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Level04} from "../src/Level04.sol";

contract Level04Test is Test {
    Level04 public level04;

    function setUp() public {
        level04 = new Level04();
    }

    function test_solution_1() public view {
        // Test with input value 1
        assert(level04.solution(1) == 1);
    }

    function test_solution_4() public view {
        // Test with input value 4
        assert(level04.solution(4) == 4);
    }

    function test_solution_10() public view {
        // Test with input value 10
        assert(level04.solution(10) == 8);
    }

    function test_solution_1023() public view {
        // Test with input value 1023
        assert(level04.solution(1023) == 512);
    }

    function test_solution_1024() public view {
        // Test with input value 1024
        assert(level04.solution(1024) == 1024);
    }
}
