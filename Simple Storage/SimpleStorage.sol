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

    uint256 myfavoriteNumber;     // By default is 0 if not value is given
    
    // uint256[] listofFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Dynamic array
    Person[] public listOfPeople;       // By default is []

    // Static array
    // Person[3] public listOfPeople;

    // Person public myFriend = Person(7, "Joe");
    // Person public myFriend = Person({ favoriteNumber: 7, name: "Joe" });

    function store(uint256 _favoriteNumber) public {
        myfavoriteNumber = _favoriteNumber;
    }

    // view, pure
    // Both disallow modification of state
    // pure disallow reading from state or storage
    // view or pure function only cost gas when a gas cost transaction is calling
    function retrieve() public view returns(uint256) {
        return myfavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // Person memory myFriend = Person(_favoriteNumber, _name);
        listOfPeople.push( Person(_favoriteNumber, _name));
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