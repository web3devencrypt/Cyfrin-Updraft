// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    // uint256 public favoriteNumber
    // type visibility name
    SimpleStorage public simpleStorage;

    function creatSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }

}
