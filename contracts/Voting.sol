// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract Voting{

    address public admin;
    constructor(){

        admin = msg.sender;
    }
}