// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Arrays {
    uint[] public arr = [10, 20, 30];

    function pushElement(uint elem) public {
        arr.push(elem);
    }

    function popElement() public {
        arr.pop();
    }

    function setter(uint256 index, uint256 value) public {
        arr[index] = value;
    }

    function arrLength() public view returns (uint256) {
        return arr.length;
    }
}
