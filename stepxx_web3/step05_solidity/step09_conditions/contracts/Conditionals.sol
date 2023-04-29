// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Conditions {
    function check(int val) public pure returns (string memory) {
        if (val > 0) {
            return "Greater than 0";
        } else if (val < 0) {
            return "Less than 0";
        } else {
            return "Equal to 0";
        }
    }
}
