// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Isolution3 {
    function solution(bytes memory packed) external returns (uint16 a, bool b, bytes6 c);
}

contract Level03 is Isolution3 {
    constructor() payable {}

    function solution(bytes memory packed) external pure returns (uint16 a, bool b, bytes6 c) {
        require(packed.length >= 3, "Invalid packed data length");

        assembly {
            // Read the first 2 bytes (uint16)
            let data := mload(add(packed, 0x2))
            // Extract uint16 value (a) from the first 32 bytes
            a := and(data, 0xFFFF)

            // Extract bool value (b) from the next byte
            b := gt(and(mload(add(packed, 0x3)), 0xFF), 0)

            // Extract bytes6 value (c) from the remaining 6 bytes
            c := mload(add(add(packed, 0x20), 3))
        }
        return (a, b, c);
    }
}
