// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {Level03} from "../src/Level03.sol";

contract UnpackDataSolutionTest is Test {
    Level03 level03;

    function setUp() public {
        level03 = new Level03();
    }

    function test_solution() public view {
        uint16 expectedA = 12345;
        bool expectedB = true;
        bytes6 expectedC = "abc12";
        bytes memory packedData = abi.encodePacked(expectedA, expectedB, expectedC);
        console.logBytes(packedData);
        (uint16 a, bool b, bytes6 c) = level03.solution(packedData);
        assertEq(a, expectedA);
        assertEq(b, expectedB);
        assertEq(c, expectedC);
    }

    function test_solution_false() public view {
        uint16 expectedA = 12345;
        bool expectedB = false;
        bytes6 expectedC = "abc123";
        bytes memory packedData = abi.encodePacked(expectedA, expectedB, expectedC);
        console.logBytes(packedData);
        (uint16 a, bool b, bytes6 c) = level03.solution(packedData);
        assertEq(a, expectedA);
        assertEq(b, expectedB);
        assertEq(c, expectedC);
    }
}
