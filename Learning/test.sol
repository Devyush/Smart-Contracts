// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Mycontract{
    struct Student{
        uint age;
        string name;
    }
    Student public s1;
    constructor(){
        s1.age=10;
        s1.name="Diya";
    }
    function ChangeStruct() public{
        s1.age=12;
        s1.name="Mahesh";
    }
}