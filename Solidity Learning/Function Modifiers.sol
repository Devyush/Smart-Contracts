// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract Test {
    bool public iscondition;
    uint public myint = 12;

    modifier runtest(uint _myint){
        if(_myint>10){
            iscondition = true;
        } else {
            iscondition = false;
        }
        _;
    }

    function myfunction() public runtest(myint){}
}