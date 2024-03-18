// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Isolution {
    function solution() external pure returns (uint8);
}

contract Level01 is Isolution {
    function solution() external pure returns (uint8) {
        return 42;
    }
}