// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // • Versioning

// • Contract Declaration
contract SimpleStorage {
    /* • Types & Declaring Variables
       o uint256, int256, bool, string, address, bytes32 */
    uint256 private favoriteNumber;        // default = 0
    int256 private favoriteInt = 49;       // example signed int
    bool private isTrue;                   // default = false
    string private myName = "akshit";      // initialized string
    address private myAddress = 0xBbECB965bC0B35F77AB7a64C7356c0A0f45f3Acc;
    bytes32 private myBytes = "cat";       // fixed-length bytes

    // • Structs
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // • Arrays - Dynamic & Fixed sized
    Person[] public people; // dynamic array of Person structs

    // • Mappings
    mapping(string => uint256) public nameToFavoriteNumber;

    // • Functions
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // • View & Pure Functions
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // • Memory
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        Person memory newPerson = Person({
            favoriteNumber: _favoriteNumber,
            name: _name
        });
        people.push(newPerson);
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
