// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Isolution4 {
    function solution(uint256 number) external pure returns (uint256);
}

contract Level04 is Isolution4 {
    // stdin: 1                     stdout: 1 or 2**0
    // stdin: 10                    stdout: 8 or 2**3
    // stdin: 21                    stdout: 16 or 2**4
    // stdin: 2048                  stdout: 2048 or 2**11
    // stdin: 9223372036854775808   stdout: 9223372036854775808 or 2**63
    // stdin: 0xffffffff            stdout: 2147483648 or 0x80000000 or 2**31

    constructor() payable {}

   function solution(uint256 _number) external pure override returns (uint256) {
        require(_number >= 1, "Input must be greater than or equal to 1");
        assembly {
            // Initialize variables
            let highestBitSet := 0
            let tempNumber := _number
            
            // Loop until tempNumber is greater than 0
            
            for {} gt(tempNumber, 0) {} {
                // Right shift tempNumber by 1
                tempNumber := shr(1, tempNumber)
                // Increment highestBitSet
                highestBitSet := add(highestBitSet, 1)
            }
            
            // Calculate the result
            let result := shl(sub(highestBitSet, 1), 1)
            
            // Return the result
            mstore(0, result)
            return(0, 0x20)
        }
    }

}
