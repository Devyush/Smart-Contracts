// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract Sample  {
        modifier cost(){
                require(msg.value >= 2 ether,"Amount must be atleast 2 ether");
                _;
        }
        function modifier_func() public payable cost() returns(bool){
                return true;
        }
}