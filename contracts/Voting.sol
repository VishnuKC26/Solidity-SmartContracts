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
     
    function vote(uint _candidateIndex) public{

        require(!hasVoted[msg.sender],"You have already voted!");
        require(_candidateIndex < candidates.length, "Invalid candidate index");

        hasVoted[msg.sender]=true;
        candidates[_candidateIndex].voteCount+=1;
    }

    function getWinner() public view returns (string memory) {
    require(candidates.length > 0, "No candidates available");

    uint winnerIndex = 0;
    uint maxVotes = 0;

    for (uint i = 0; i < candidates.length; i++) {
        if (candidates[i].voteCount > maxVotes) {
            maxVotes = candidates[i].voteCount;
            winnerIndex = i;
        }
    }

    return candidates[winnerIndex].name;
}
   
}