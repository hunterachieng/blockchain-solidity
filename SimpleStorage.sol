//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 < 0.9.0;

contract SimpleStorage{
     

     //this will get initialized to 0!
     uint256 public favoriteNumber;


      //structs are ways to define new ways in solidity and objects

      struct  People{
          uint256 favoriteNumber;
          string name;
      }

      //creating an array
     People[] public people; 

     //mapping
     mapping(string => uint256) public nameToFavoriteNumber;



     function store(uint256 _favoriteNumber) public{
         favoriteNumber = _favoriteNumber;

     }

     //view - read some state off the blockchain. Does not change the state of the variable and does not make a transaction
     //Blue buttons are view functions
     //pure functions are functions that only do a type of math
     function retrieve() public view  returns(uint256){
         return favoriteNumber;
     }
    
    //storing an object in memeory - only stres during execution
    //storing in storage means the data persists even after the function has been executed
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People({favoriteNumber: _favoriteNumber,name: _name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

