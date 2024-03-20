// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Isolution2 {
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
}

contract Level02 is Isolution2 {
    function solution(uint256[10] calldata unsortedArray) external pure override returns (uint256[10] memory) {
        uint256[10] memory sorted = insertionSort(unsortedArray);
        return sorted;
    }

    function insertionSort(uint256[10] memory array) internal pure returns (uint256[10] memory) {
        unchecked {
            for (uint256 i = 1; i < array.length; i++) {
                uint256 key = array[i];
                int256 j = int256(i) - 1;
                while (j >= 0 && array[uint256(j)] > key) {
                    array[uint256(j + 1)] = array[uint256(j)];
                    j--;
                }
                array[uint256(j + 1)] = key;
            }
            return array;
        }
    }
}
