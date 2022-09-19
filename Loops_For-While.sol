// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// watch ITU Blockchain vid:
// https://www.youtube.com/watch?v=a9PtEe3CXSg&list=PLby2HXktGwN4Cof_6a8YwlMrboX8-hs73&index=7&ab_channel=ITUBlockchain
// small loops for lower gas cost

Contract Loops {
    function forloopy() external pure {
        for (uint i = 0; i < 10; i++){
            //code
            if (i==3){
                continue; // skip the code for number 3
            }
            //more code
            if (i == 5) {
                break;
            }
        }

        uint j = 0;
        while (j<10) {
            // code
            j++;
        }
    }

    function sum(uint _n) external pure returns (uint) {
        uint s;
        for (uint i =1 ; i<= _n; i++) {
            s+= i;
        }
        return s;
    }
}
