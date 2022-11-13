// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract Sample  {
        function CheckAge(uint age) public pure returns(bool) {
                if (age>=18){
                        return true;
                }else{
                        return false;
                }
        }
}