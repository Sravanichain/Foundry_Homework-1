//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "../src/Books.sol";

contract TestBooks is Test{

    Books midterm;
    Books.Book public book;


    function setUp() public {
        midterm = new Books("Programming Foundry", "Ellan", 100);
        console.log("Midterm contract Deployed at:",address(midterm));
    }

    function test_true() public pure{
        assert(true);
    }

    function test_get_book() public{
        book=midterm.get_book();
        assertEq(book.pages,100);
        assertEq(book.author,"Ellan");
        assertEq(book.title,"Programming Foundry");
    }

    function test_update_pages() public{
        midterm.update_pages(200);
        book= midterm.get_book();
        assertEq(book.pages,200);
    }
}