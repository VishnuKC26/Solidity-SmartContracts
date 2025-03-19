// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {
    uint256 favoritenumber;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {  
        favoritenumber = _favoriteNumber;
    }

    struct People{
        string name;
        uint256 favoriteNumber;
    }
    People[] public people;

   

   function addPerson(string memory _name, uint256 _favoriteNumber) public{
    
    people.push(People(_name,_favoriteNumber));
    nameToFavoriteNumber[_name]=_favoriteNumber ;
   }

    function retreive() public view returns(uint256){
        return favoritenumber;
    }
}
