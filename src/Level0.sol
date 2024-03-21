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

    function solution_yul() external pure returns (uint8){
        //return 42; 
        assembly{
        mstore(0x80,0x2a) // store 42 in memory
        return(0x80, 0x20) 
        }
      }
}


