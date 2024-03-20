// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Level02} from "../src/Level02.sol";

contract Level01Test is Test {
    Level02 public level02;

    function setUp() public {
        level02 = new Level02();
    }

    function test_solution() public view {
        uint256[10] memory unsortedArray = [
            uint256(7),
            uint256(3),
            uint256(9),
            uint256(1),
            uint256(5),
            uint256(8),
            uint256(4),
            uint256(2),
            uint256(6),
            uint256(0)
        ];
        uint256[10] memory expectedSortedArray = [
            uint256(0),
            uint256(1),
            uint256(2),
            uint256(3),
            uint256(4),
            uint256(5),
            uint256(6),
            uint256(7),
            uint256(8),
            uint256(9)
        ];

        uint256[10] memory sortedArray = level02.solution(unsortedArray);

        for (uint256 i = 0; i < sortedArray.length; i++) {
            assertEq(sortedArray[i], expectedSortedArray[i]);
        }
    }

    function testLevel2ArraySortNonZero() public view {
        uint256[10] memory unsortedArray = [
            uint256(7),
            uint256(3),
            uint256(9),
            uint256(1),
            uint256(5),
            uint256(8),
            uint256(4),
            uint256(2),
            uint256(6),
            uint256(10)
        ];
        uint256[10] memory expectedSortedArray = [
            uint256(1),
            uint256(2),
            uint256(3),
            uint256(4),
            uint256(5),
            uint256(6),
            uint256(7),
            uint256(8),
            uint256(9),
            uint256(10)
        ];

        uint256[10] memory sortedArray = level02.solution(unsortedArray);

        for (uint256 i = 0; i < sortedArray.length; i++) {
            assertEq(sortedArray[i], expectedSortedArray[i]);
        }
    }
}




