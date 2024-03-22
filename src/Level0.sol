// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
interface Isolution {
    function solution() external pure returns (uint8);
}

contract Level0 is Isolution{
    constructor() payable {}

    function solution() external pure returns (uint8) {
        return 42;
    }
}


