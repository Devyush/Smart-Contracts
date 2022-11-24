// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract Test {
        function Transfer() public payable returns(uint balance){
                if(msg.value % 2 != 0){
                    revert("Even value required.");
                }
                //require(msg.value % 2 == 0, "Even value required.");
                uint balanceBeforeTransfer = address(this).balance;
                payable(msg.sender).transfer(msg.value / 2);
                assert(address(this).balance == balanceBeforeTransfer - msg.value / 2);     // It can have a message just like require
                return address(this).balance;
        }
}