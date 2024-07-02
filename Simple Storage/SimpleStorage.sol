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

    // ex - Ben -> 123
    mapping(string => uint256) public nameToFavoriteNumber;

    // Static array
    // Person[3] public listOfPeople;

    // Person public myFriend = Person(7, "Joe");
    // Person public myFriend = Person({ favoriteNumber: 7, name: "Joe" });

    // Adding virtual keyword makes this function overrideable
    function store(uint256 _favoriteNumber) public virtual {
        myfavoriteNumber = _favoriteNumber;
    }

    // view, pure
    // Both disallow modification of state
    // pure disallow reading from state or storage
    // view or pure function only cost gas when a gas cost transaction is calling
    function retrieve() public view returns(uint256) {
        return myfavoriteNumber;
    }

    // calldata, memory, storage
    // calldata and memory are temporary variables
    // String is a special type in soldity
    // Difference between calldata and memory is that memory variable can be change
    // calldata is temporary variables that cannot be modified
    // memory is temporary variables that can be modified
    // storage is permanent variables that can be modified
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // Person memory myFriend = Person(_favoriteNumber, _name);
        listOfPeople.push( Person(_favoriteNumber, _name));

        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

contract SimpleStorage2 {}
contract SimpleStorage3 {}

// Notes
// --------------
// - It is recommended to add SPDX-License
// - Bytes is a low level type
// - Variables are holders for different values
// - Not specify the uint it defaults to being uint 256
// - int can be positive or negative number
// - Visibility for variables default to internal
// - Everything on EVM chains is public data
// - State Variables are converted to a storage variable
// - Arrays, structs, or mapping are considered special types in solidity
// - uint256 is known as a primitive type
// - String is an array of bytes
// - mapping (dictionary) a set of keys with each key returning a special set of information about about that key