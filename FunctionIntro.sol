// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// external => callable after Contract is deployed
// view => can read data from the Blockchain
// pure => read only, not read from the Blockchain

contract FunctionIntro {
    function add(uint x, uint y) external pure returns(uint) {
        return x + y;
    }

    function sub(uint x, uint y) external pure returns (uint) {
        return x-y;
    }
}