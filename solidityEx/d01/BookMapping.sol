//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract BookCont{
    //mapping
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }
    constructor() public {
        names[1] = "James Hetfield";
        names[2] = "Kirk Hamete";
        names[3] = "Bruce Lee";
    }
    function addBook(uint _id, string memory _title, string memory _author) public {//0.5버전부터인가 string memory라고 써줘야한다.
        books[_id] = Book( _title, _author);
    }
    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

}