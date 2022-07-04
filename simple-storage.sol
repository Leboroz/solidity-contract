//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {

    uint256 favoriteNumber;

    mapping(string => uint256) public nameToFavoriteNumber;

    struct people {
        uint256 favoriteNumber;
        string name;
    }

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}