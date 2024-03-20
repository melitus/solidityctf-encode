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
        uint256[2][3] memory x = [
            [uint256(1), uint256(2)],
            [uint256(3), uint256(4)],
            [uint256(5), uint256(6)]
        ];
        
        uint256[2][3] memory y = [
            [uint256(7), uint256(8)],
            [uint256(9), uint256(10)],
            [uint256(11), uint256(12)]
        ];
        

        uint256[2][3] memory result = level01.solution(x, y);
        assertEq(result[0][0], uint256(8), "Matrix addition did not produce the expected result at [0][0]");
        assertEq(result[0][1], uint256(10), "Matrix addition did not produce the expected result at [0][1]");
        assertEq(result[1][0], uint256(12), "Matrix addition did not produce the expected result at [0][2]");
        assertEq(result[1][1], uint256(14), "Matrix addition did not produce the expected result at [1][0]");
        assertEq(result[2][0], uint256(16), "Matrix addition did not produce the expected result at [1][1]");
        assertEq(result[2][1], uint256(18), "Matrix addition did not produce the expected result at [1][2]");
    }
}




