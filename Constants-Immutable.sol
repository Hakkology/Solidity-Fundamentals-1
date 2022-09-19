// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// gas cost of constant values are lesser than generic values
// same with immutable

contract Constants {
    address public constant MY_ADR;
    uint public constant MY_UINT = 123; 
}

contract Immutable {
    address public immutable owner = msg.sender;

    constructor() {
        owner = msg.sender; // the same as immutable value, can only be initialized during Contract deployment
    }

    uint public x;

    function foo() external {
        require(msg.sender == owner);
        x += 1;
    }

}