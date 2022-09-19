// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// external => callable after Contract is deployed

// view => Indicates that the function will read data from the blockchain but not modify it.
// Changing state variables
// Emitting events
// Creating other contracts
// Using selfdestruct
// Sending Ether via calls
// Calling any function which is not marked view or pure
// Using low-level calls
// Using inline assembly containing certain opcodes

// pure => t states that the function will neither read nor modify data from the blockchain.
// Reading state variables
// Accessing address(this).balance or <address>.balance
// Accessing any of the special variable of block, tx, msg
// Calling a function which is not pure
// Etc are present in pure functions

contract ViewandPureFuncs {
    uint public num;

    function viewFunc() external view returns (uint) {
        return num;
    }

    function pureFunc() external pure returns (uint) {
        return 1;
    }

    function addtoNum(uint x) external view returns (uint){
        num + x ;
    }

    function add (uint x, uint y) external pure returns (uint){
        return x + y;
    }
}