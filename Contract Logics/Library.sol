// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

library Math {
        function add(uint256 arg1, uint256 arg2) internal pure returns(uint256){
                return arg1+arg2;
        } 
}   
contract Addition {
        using Math for uint;
        function Add(uint value1, uint value2) public pure returns(uint){
                uint x = value1.add(value2);
                return x;
        }
}