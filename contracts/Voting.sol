// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract Voting{

    address public admin;

    mapping(address => bool) public hasVoted;
    constructor(){

        admin = msg.sender;

    }

    struct Candidate{

        string name;
        uint voteCount;
    }

    Candidate[] public candidates;

    function addCandidate(string memory _name)public {

        require(msg.sender == admin, "only admin can add");
        candidates.push(Candidate(_name,0));

    }
     
    function 
    
}