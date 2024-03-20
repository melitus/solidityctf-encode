// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Isolution1 {
    function solution(uint256[2][3] calldata x, uint256[2][3] calldata y) external pure returns (uint256[2][3] memory);
}

// contract Level01 is Isolution1 {
//     constructor() payable {}
//        function solution(uint256[2][3] calldata x, uint256[2][3] calldata y) external pure returns (uint256[2][3] memory finalArray) {
//         uint256[2][3] memory result;
//         for (uint256 i = 0; i < 2; i++) {
//             for (uint256 j = 0; j < 3; j++) {
//                 result[i][j] = x[i][j] + y[i][j];
//             }
//         }
//         return result;
//     }
// }

contract Level01 is Isolution1 {
    constructor() payable {}

    function solution(
        uint256[2][3] calldata x,
        uint256[2][3] calldata y
    ) external pure returns (uint256[2][3] memory finalArray) {
        unchecked {
            finalArray[0][0] = x[0][0] + y[0][0];
            finalArray[0][1] = x[0][1] + y[0][1];
            finalArray[1][0] = x[1][0] + y[1][0];
            finalArray[1][1] = x[1][1] + y[1][1];
            finalArray[2][0] = x[2][0] + y[2][0];
            finalArray[2][1] = x[2][1] + y[2][1];
        }
    }
}
