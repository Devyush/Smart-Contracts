// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Sample  {
    uint a;
    function pay() public payable {

    }
    function getbalance() public view returns(uint) {
        return address(this).balance;
    }
    function withdraw() public payable {
        payable(msg.sender).transfer(1 ether);
    }
    fallback() external {

    }
    receive() payable external {

    }
}