//SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

import "./SimpleStorage.sol";
//contract inheritance allows the new contract to have all the inherited contract's functions

contract StorageFactory is SimpleStorage{

    SimpleStorage[] public simpleStorageAray;
    function createSimpleStorageContrat () public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageAray.push(simpleStorage);
    }

    //interacting with a single deployed contract within another contract
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber)public{
  return SimpleStorage(address(simpleStorageAray[_simpleStorageIndex])).store(_simpleStorageNumber);
  
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
      return SimpleStorage(address(simpleStorageAray[_simpleStorageIndex])).retrieve();
        
    }

}
