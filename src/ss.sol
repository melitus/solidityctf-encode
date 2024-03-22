// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Isolution5 {
    function solution(int256 a, int256 b) external pure returns (int256);
}

contract Level05 is Isolution5 {
    constructor() payable {}

    function solution(int256 a, int256 b) external pure override returns (int256) {
        unchecked {
            // Calculate the adjustment to ensure rounding up for odd inputs
        int256 adjustment = ((a % 2) + (b % 2) >= 1) ? int256(1) : int256(0);

        // Calculate the average while ensuring rounding up
        int256 average = (a / 2) + (b / 2) + adjustment;

        return average;
        }
    }
}
