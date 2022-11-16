// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract Sample  {
        uint public x = 10;
        function getter() public view returns(uint){
                return x;
        }
}