// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Level04} from "../src/Level04.sol";

contract Level04Test is Test {
    Level04 public level04;

    function setUp() public {
        level04 = new Level04();
    }

    function test_solution() public view {
        // Test with different input values
        assert(level04.solution(1) == 1);
        assert(level04.solution(4) == 4);
        assert(level04.solution(10) == 8);
        assert(level04.solution(1023) == 512);
        assert(level04.solution(1024) == 1024);

    }
}




