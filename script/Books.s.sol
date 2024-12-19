// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import "../src/Books.sol";

contract DeployBooks is Script {
    Books public midterm;
    Books.Book public book;

    function setUp() public {
        vm.broadcast();

        midterm = new Books("Programming Foundry", "Ellan", 100);
    }

    function run() public {
        log_book();
    }

    function log_book() internal{
        book = midterm.get_book();
        console.log("Author :", book.author);
    }
}