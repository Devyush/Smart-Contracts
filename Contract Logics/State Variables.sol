// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract MyContract {

  int a = 26;  // Works - First time declaring variable

  int a = 32;  // Doesn't work - Redeclaring variable type and value

  a = 32;  // Works - Jut assigning the value 

  string a = '32';  // Doesn't work - Redeclaring variable type and value

  function get() public {  . . . }

}