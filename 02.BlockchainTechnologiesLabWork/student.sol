// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentResults {
    struct Student {
        string name;
        uint rollNumber;
        uint marks;
        string subject;
    }
    
    mapping(address => Student) public studentResults;
    
    function addResult(string memory _name, uint _rollNumber, uint _marks, string memory _subject) public {
        Student memory newStudent = Student(_name, _rollNumber, _marks, _subject);
        studentResults[msg.sender] = newStudent;
    }
}