// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24; // Solidity Version

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value is given

    uint256  MyFavoriteNumber = 73; // 0

    // uint256[] listOfFavoriteNubers;
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listOfPeople; // []

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        MyFavoriteNumber = _favoriteNumber;
    }

    // Views are functions that do not write data to the blockchain (read only)
    function retrive() public view returns(uint256){
        return MyFavoriteNumber;
    }

    // calldata(non-modifyable), memory(modifyable), storage(permanent, non-modefiyable)
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name)); // push new peaple to the dynamic array
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
