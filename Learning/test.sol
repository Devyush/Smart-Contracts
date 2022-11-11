// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Mycontract{
    function global() public view returns(uint blockno, uint timestamp, address sender){
        return (block.number, block.timestamp, msg.sender);
    }
}