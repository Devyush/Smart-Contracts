// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract Sample  {
        function deposit() public payable{}
        function getbalance() public view returns(uint) {
                return address(this).balance;
        }
        function transfer() public payable{
                payable(msg.sender).transfer(1 ether);
        }
}