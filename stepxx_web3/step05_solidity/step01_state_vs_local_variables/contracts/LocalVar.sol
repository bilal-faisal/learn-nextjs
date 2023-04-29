// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract LocalVar {
    // string memory name = "Bilal"; CAN'T DO THIS

    function myFunc() public pure returns (string memory) {
        // string name = "Bilal"; CAN'T DO THIS
        string memory name = "Bilal";
        return name;
    }
}
