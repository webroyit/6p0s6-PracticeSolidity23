// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

// Inheritance everything from SimpleStorage
contract AddFiveStorage is SimpleStorage {
    function sayHello() public pure returns(string memory) {
        return "Hello";
    }

    // overrides
    // You need virtual and override
    function store(uint256 _newNumber) public override {
        myfavoriteNumber = _newNumber + 5;
    }
}

// Notes
// --------------
// - In order for a function to be override, you need to add virtual keyword in the base class or the parent class