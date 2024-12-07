// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.13;
import "@chainlink/contracts/src/v0.8/interfaces/ChainlinkRequestInterface.sol";
import {console} from "forge-std/Test.sol";

contract Books {
    address owner;

    struct Book {
        string title;
        string author;
        uint256 pages;
    }

    Book public book;

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the Owner");
        _;
    }

    constructor(string memory _title, string memory _author, uint256 _pages) {
        book.title = _title;
        book.author = _author;
        book.pages = _pages;
        owner = msg.sender;
    }

    function update_pages(uint256 _pages) public onlyOwner {
        book.pages = _pages;
    }

    function get_book() public view returns (Book memory) {
        return book;
    }
}
