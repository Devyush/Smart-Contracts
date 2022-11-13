// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract A  {
        uint public a;
}
contract B is A {
        function setvalue() public {
                a=10;
        }
}