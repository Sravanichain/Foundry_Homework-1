pragma solidity 0.8.13;

import {Test} from "forge-std/Test.sol";
import {Books} from "../src/Books.sol";

contract BooksTest is Test {
    Books public myBook;

    function setUp() public {
        myBook = new Books("Programming Foundry", "Gowtham", 100);
    }

    function test_get_book() public {
        Books.Book memory book = myBook.get_book();
        assertEq(book.title, "Programming Foundry");
        assertEq(book.author, "Gowtham");
        assertEq(book.pages, 100);
    }

    function test_updatePages() public {
        myBook.update_pages(150);
        Books.Book memory book = myBook.get_book();
        assertEq(book.pages, 150);
    }
}
