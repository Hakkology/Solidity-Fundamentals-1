// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// watch ITU Blockchain vid:
// https://www.youtube.com/watch?v=a9PtEe3CXSg&list=PLby2HXktGwN4Cof_6a8YwlMrboX8-hs73&index=7&ab_channel=ITUBlockchain

contract Conditionals {
    function example(uint _x) external pure returns (uint) {
        if (_x < 10){
            return 1;
        } else if (_x < 20) {
            return 2;
        } 
        return 3;
    }

    function ternary (uint _x) external pure returns (uint) {
        // if (_x < 10) {
        //     return 1;
        // }
        // return 2;
        return _x <10 ? 1:2 ;
    }

}