// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;   

import "/SimpleStorage.sol";

contract StorageFactory {
    // type visibility name
    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public {
        // 'new' tell solidity to deploy a contract 
        simpleStorage = new SimpleStorage();
    }
}

// Notes
// --------------
// - Solidity is case sensitive