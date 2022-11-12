// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Mycontract{
    struct Student{
        string name;
        uint age;
    }
    mapping(uint=>Student) public student_info;
    function Store(uint _rollno, string memory _name, uint _age) public {
        student_info[_rollno].name=_name;
        student_info[_rollno].age=_age;
    }
}