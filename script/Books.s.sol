// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Books} from "../src/Books.sol";

contract BooksScript is Script {
    function run() public returns (Books) {
        vm.startBroadcast();
        Books myBook = new Books("Programming Foundry", "Gowtham", 100);
        vm.stopBroadcast();
        return myBook;
    }
}
