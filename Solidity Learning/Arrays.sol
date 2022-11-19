// SPDX-License-Identifier: MIT
        pragma solidity ^0.8.10;
        
        contract Sample  {
                uint[2] public x = [15,26];
                uint[] public y;
                uint public a;
                function addelement(uint z) public {
                        y.push(z);
                        a=a+1;
                }
                function arraylength() public view returns(uint){
                        return(a);
                }
        }