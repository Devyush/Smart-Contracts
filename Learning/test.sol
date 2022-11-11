// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Mycontract{

     //Declaring State Variables

    //1st way: Assign the value of the variable in the same line it is declared.
    //int public a = 10;

    //2nd way: Assign the value of the variable through a contructor.
    int public a;
    // constructor() public {
    //     a = 10;
    // }

    //3rd way: Assign the value of the variable through a function.
    function setter() public {
        a = a + 1;
    }
}