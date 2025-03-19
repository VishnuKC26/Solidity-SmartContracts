// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract FundMe {

    mapping(address => uint256) public addressToAmountFunded;

    function add() public payable {

        addressToAmountFunded[msg.sender]+=msg.value;

        // we wish to set a minimum value to fund in USD
    }

}