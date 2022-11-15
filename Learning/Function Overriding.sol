// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract A {
        function myfunction() external pure virtual returns(uint){
                return 1;
        }
}
contract B is A {
        function myfunction() external pure override returns(uint){
                return 2;
        }
}