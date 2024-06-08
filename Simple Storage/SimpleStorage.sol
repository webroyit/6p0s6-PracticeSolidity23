// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;     
// pragma solidity ^0.8.18;             // Add carrot ^ for this contract to work with 0.8.18 or greater 
// pragma solidity >=0.8.18 <0.9.0;    // Any version between these two is a valid version for this contract

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    // bool hasFavoriteNumber = true;
    // uint favoriteNumber = 3;
    // string favoriteNumberInText = "eighty-eight";
    // int favoriteInt = -88;
    // address myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // bytes32 favoriteBytes32 = "cat";

    uint256 public favoriteNumber;     // By default is 0 if not value is given
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
}

// Notes
// --------------
// - It is recommended to add SPDX-License
// - Bytes is a low level type
// - Variables are holders for different values
// - Not specify the uint it defaults to being uint 256
// - int can be positive or negative number
// - Visibility for variables default to internal
// - Everything on EVM chains is public data