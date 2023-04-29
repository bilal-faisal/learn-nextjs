// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract StateVar {
    uint public age = 21;

    // age = 22; CAN'T DO THIS
    function setAge() public {
        age = 22;
    }
}
