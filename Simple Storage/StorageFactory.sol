// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;   

// Always refer to named imports
import {SimpleStorage} from "/SimpleStorage.sol";

contract StorageFactory {
    // type visibility name
    // SimpleStorage public simpleStorage;

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        // 'new' tell solidity to deploy a contract 
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push((newSimpleStorageContract);)
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }
}

// Notes
// --------------
// - Solidity is case sensitive
// - When we compile contract, we automatically get the ABI