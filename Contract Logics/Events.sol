// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract Sample  {
    string std_name;
    uint std_id;

    event Students(string name, uint id);

    function change(string memory arg1, uint arg2) public {
        std_name = arg1;
        std_id = arg2;
        emit Students(arg1, arg2); // emit Students(std_name, std_id); -> also works
    }
}