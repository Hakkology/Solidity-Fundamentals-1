// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// There are 3 types of variables in Solidity:

// 1.State Variables

// Declared outside the function.
// Stored on the blockchain.
// 2.Local Variables:

// Not stored on the blockchain.
// Declared inside the function.
// 3.Global:

// Blockchain related variables.
// Following this tutorial will explain the details of these variable types.

contract StateVariables {
    //State variables
    uint public myUint = 123; //saved on blockchain.

    function foo() external {
        uint notStateVariable = 456; //will only exist inside this function.
    }

    //Local variables
    uint public i; //0 - default value
    bool public b; //false - default value
    address public myaddress; //State variables - 0x000000000000000000000000000000000000000000000

    function bar() external {
        uint x = 123;
        bool f = false; //will only exist inside this function.
        //more code
        x += 456;
        f=true;

        i = 123;
        b=true; // will exist in blockchain
        myaddress = address(1);
    }

    //Global Variables

    function baz() external view returns (address, uint, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return (sender, timestamp, blockNum);
    }

    //Default Values
}