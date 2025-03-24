# Solidity API

## Voting

### Contract
Voting : contracts/Voting.sol

 --- 
### Functions:
### constructor

```solidity
constructor() public
```

### addCandidate

```solidity
function addCandidate(string _name) public
```

### vote

```solidity
function vote(uint256 _candidateIndex) public
```

### getWinner

```solidity
function getWinner() public view returns (string)
```

