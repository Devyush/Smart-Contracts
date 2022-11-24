// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Sample  {
    enum status{
        reading,
        sleeping,
        writing
    }
    status public user1;
    function setstatus() public{
        user1 = status.writing;
    }
}