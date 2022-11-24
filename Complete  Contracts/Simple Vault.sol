// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
        
contract vault {
    address public owner;
    uint internal lockTime = 1 minutes;

    struct wallet{
        uint expire;
        uint amount;
    }
    uint internal a = 1;
    mapping(address=>wallet) internal wallmap;
    address[] internal addlist;
    uint i;
    constructor(){
        owner = msg.sender;
        addlist.push(msg.sender);
    }

    function ownerdeposit() public payable{
        require(msg.sender==owner,"You are not authorized.");
        wallmap[msg.sender].amount = wallmap[msg.sender].amount + msg.value;
    }

    function ownerwithrdraw(uint _amounto) public payable {
        require(msg.sender==owner,"You are not authorized.");
        require(_amounto <= wallmap[msg.sender].amount,"You don't have enough balance.");
        payable(msg.sender).transfer(_amounto);
        wallmap[msg.sender].amount = wallmap[msg.sender].amount - _amounto;
    } 

    function deposit() public payable{
        require(msg.sender!=owner,"Owner has a seperate function.");
        uint x = msg.value/10;
        uint z = x/a;
        for(i=0;i<a;i++){
            wallmap[addlist[i]].amount = wallmap[addlist[i]].amount + z;
            wallmap[addlist[i]].expire = wallmap[addlist[i]].expire + lockTime;
        }
        addlist.push(msg.sender);
        a++;
        wallmap[msg.sender].amount = wallmap[msg.sender].amount + msg.value - x;
    }

    function balance() public view returns(uint) {
        return wallmap[msg.sender].amount;
    }

    function withdraw(uint _amount) public payable {
        require(msg.sender!=owner,"Owner has a seperate function.");
        require(_amount <= wallmap[msg.sender].amount,"You don't have enough balance.");
        require(block.timestamp>wallmap[msg.sender].expire,"Please wait for some times before withdrawal");
        payable(msg.sender).transfer(_amount);
        wallmap[msg.sender].amount = wallmap[msg.sender].amount - _amount;
    }
}     
