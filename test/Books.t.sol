// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "../src/Books.sol";

contract TestBooks is Test {
    Books public books;
    Books.Book public book;

    function setUp() public {
        books = new Books("Programming Foundry", "Sai Ganesh", 100);
        console.log("Books contract deployed at address:", address(books));
    }

    function test_true() public pure {
        assert(true);
    }

    function test_get_book() public {
        book = books.get_book();
        assertEq(book.title, "Programming Foundry");
        assertEq(book.author, "Sai Ganesh");
        assertEq(book.pages, 100);
    }

    function test_update_pages() public {
        books.update_pages(200);
        book = books.get_book();
        assertEq(book.pages, 200);
    }
}
