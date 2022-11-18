// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract A {
        uint public a;
        constructor(uint a_) {
                a=a_;
        }
}
contract B is A(1) {
        constructor(){
        }
}