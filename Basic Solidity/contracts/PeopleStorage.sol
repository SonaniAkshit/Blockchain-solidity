// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // Versioning

// Contract Declaration
contract PeopleStorage {
    // Types & Declaring Variables
    uint256 private favoriteNumber; // default = 0

    // Structs
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Arrays - Dynamic
    Person[] public people;

    // Mappings
    mapping(string => uint256) public nameToFavoriteNumber;

    // Functions
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // View Function
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // Add Person + update mapping
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
