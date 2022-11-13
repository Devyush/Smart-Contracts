// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract Sample  {
        function factorial(uint num) public pure returns(uint) {
                uint a=1;
                for(uint i=1;i<num+1;i++){
                        a=a*i;
                }
                return a;
        }
}