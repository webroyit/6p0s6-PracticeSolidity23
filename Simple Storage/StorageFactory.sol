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
}

// Notes
// --------------
// - Solidity is case sensitive