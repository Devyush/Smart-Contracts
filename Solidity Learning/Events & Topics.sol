// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract Sample  {
        event Deposit(uint8 indexed id, uint value);
        function deposit(uint8 id) public payable {
                emit Deposit(id, msg.value);
        }
}