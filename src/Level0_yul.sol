// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
interface Isolution {
    function solution_yul() external view returns (uint8);
}

contract Level0 is Isolution{
    uint8 val = 42;
    constructor() payable {}

    function solution_yul() external view returns (uint8 ret){
         
        assembly{
          ret := sload(val.slot)
        }
      }
}


