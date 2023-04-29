// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Loop {
    uint256[3] public arr;

    function setter() public {
        uint256 count;
        while (count < arr.length) {
            arr[count] = count;
            count++;
        }

        for (uint256 i; i < arr.length; i++) {
            arr[i] = i;
        }

        // do {
        //     arr[count] = count;
        //     count++;
        // } while (count < arr.length);
    }
}
