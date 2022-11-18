// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract Sample  {
        function checkeven(uint _a) public pure returns(bool){
                require(_a % 2 == 0, "Value is odd");
                return true;
        }
}