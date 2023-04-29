// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Arrays {
    bytes2 public b1; //fix byte arr

    function setb1() public {
        b1 = "ab";
    }

    function getb1(uint i) public view returns (bytes1) {
        return b1[i];
    }

    bytes public b2; //dyn byte arr

    function setb2() public {
        b2 = "ab";
    }

    function pushElement(bytes1 elem) public {
        b2.push(elem);
    }

    function popElement() public {
        b2.pop();
    }

    function getb2(uint i) public view returns (bytes1) {
        return b2[i];
    }
}
