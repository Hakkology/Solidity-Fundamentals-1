// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// In case of Solidity, the code defined inside the constructor will run only once, 
//at the time the contract is created and deployed in the network. 
//A default constructor is created by the compiler if there is no explicitly defined constructor.

contract ConstructorIntro {
    address public owner;
    uint public x;

    constructor(uint _x) {
        owner = msg.sender;
        x= _x;
    }
}