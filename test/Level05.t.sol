// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Level05} from "../src/Level05.sol";

contract Level04Test is Test {
    Level05 public level05;

    function setUp() public {
        level05 = new Level05();
    }

    function testSolution_1() public view {
        // Test with input values (1, 1)
        assert(level05.solution(1, 1) == 1);
    }

    function testSolution_with_positive_numbers() public view {
        // Test with input values (2, 4)
        assert(level05.solution(2, 4) == 3);
    }

    function testSolution_with_mixed_signed_numbers() public view {
        // Test with input values (-5, 5)
        assert(level05.solution(-5, 5) == 0);
    }

    function testSolution_with_nagative_numbers() public view {
        // Test with input values (-10, -8)
        assert(level05.solution(-10, -8) == -9);
    }

    function testSolution_with_even_sum() public view {
        // Test with input values (100, 200)
        assert(level05.solution(100, 200) == 150);
    }
}




