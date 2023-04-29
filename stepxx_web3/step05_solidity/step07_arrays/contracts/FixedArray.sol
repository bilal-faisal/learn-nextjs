// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Arrays {
    uint256[4] public arr = [1, 2, 3, 4];

    function setter(uint256 index, uint256 value) public {
        arr[index] = value;
    }

    function arrLength() public view returns (uint256) {
        return arr.length;
    }
}
