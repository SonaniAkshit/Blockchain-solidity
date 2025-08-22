// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // • Versioning 

contract SimpleStorage { // • Contract Declaration  

    /* • Types & Declaring Variables 
            o uint256, int256, bool, string, address,  
                bytes32 */
    uint256 favoriteNumber;
    int256 favoritInt = 49;
    bool True;
    string name = 'akshit';
    address MyAddress = 0xBbECB965bC0B35F77AB7a64C7356c0A0f45f3Acc;
    bytes32 myBytes = "cat";

    // • Structs 
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // • Arrays - Dynamic & Fixed sized 
    Person[] public people;

    // • Mappings 
    // mapping(string => uint256) public nameToFavoriteNumber;

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
        Person memory newPerson = Person({favoriteNumber: _favoriteNumber, name: _name});
        people.push(newPerson);
    }
}
