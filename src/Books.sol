//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract Books{
    struct Book {
        string title;
        string author;
        uint256 pages;
    }
    Book public book;
    address public owner;
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the Owner");
        _;
    }

    constructor(string memory _title, string memory _author, uint256 _pages) {
        book = Book(_title, _author, _pages);
        owner = msg.sender;  // Owner is set to the address that deployed the contract
    }

    function update_pages(uint256 _pages) public onlyOwner {
        book.pages = _pages;
    }

    function get_book() public view returns (Book memory) {
        return book;
    }
}