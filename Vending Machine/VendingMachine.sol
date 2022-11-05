// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract VendingMachine {
    
    address public owner;
    mapping(address=>uint) public candy;

    constructor() {
        owner = msg.sender;
        candy[address(this)]=50;
    }

    function getCandyAmount() public view returns(uint) {
        return candy[address(this)];
    }

    function restock(uint restockCandy) public {
        require(msg.sender==owner,"Access Denied");
        candy[address(this)] += restockCandy;
    }

    function purchase(uint amountCandy) public payable {
        require(msg.value > amountCandy * 3 ether, "Minimum of 3 ether per candy");
        require(candy[address(this)] > amountCandy, "Out of Stock! Please try later");
        candy[address(this)] -= amountCandy;
        candy[msg.sender] += amountCandy;
    }

    

}