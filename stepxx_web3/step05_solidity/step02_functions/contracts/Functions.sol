// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Functions {
    uint256 public age = 21;

    constructor(uint256 newAge) {
        age = newAge;
    }

    function getAge() public view returns (uint256) {
        return age;
    }

    function setAge(uint256 newAge) public {
        age = newAge;
    }

    function viewFunction() public view returns (uint256) {
        return age;
    }

    function pureFunction() public pure returns (uint256) {
        uint256 roll = 231;
        return roll;
    }
}
