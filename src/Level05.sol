// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Isolution5 {
    function solution(int256 a, int256 b) external pure returns (int256);
}

contract Level05 is Isolution5 {
    constructor() payable {}

    function solution(int256 a, int256 b) external pure override returns (int256) {
    unchecked {

        int256 sum = a + b;
        int256 average = sum / 2;

        if (sum % 2 != 0) {
            average += 1; // Round up if the sum is odd
        }

        return average;
    }}
}
