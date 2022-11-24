// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract Vault1 {
    address public owner;
    uint timeLockConst = 5 minutes;
    struct Users{
        address user;
    }
    struct Vault {
        uint commision;
        uint timeLock;
        uint withdrawAmount;
    }
    uint a = 0;
    uint i;
    address[] usersJoined;
    mapping (address => Vault) addressToVault;
    mapping (address => Users) addressToUsers;
    constructor() payable{
        owner = msg.sender;
        addressToUsers[msg.sender].user = owner;
        addressToVault[msg.sender].commision = 0;
        usersJoined.push(owner);
        a++;
    }
    modifier onlyOwner{
        require(msg.sender == owner, "you are not the owner");
        _;
    }
    function depositByOwner() public payable onlyOwner{
        addressToVault[owner].withdrawAmount = addressToVault[msg.sender].withdrawAmount + msg.value;
    }
    function withdrawByOwner(uint _amount) public payable onlyOwner {
        Vault storage userData = addressToVault[owner];
        require(_amount < userData.withdrawAmount, "low balance");
        require(block.timestamp > userData.timeLock, "Wait for some time");
        payable(owner).transfer(_amount);
        userData.withdrawAmount = userData.withdrawAmount - _amount;
    }
    function depositAndLockToVault() public payable{
        require(msg.sender != owner, "Owner cannot join again");
        require(msg.value > 0, "Please provide some funds to join valut");
        uint x = msg.value/10;
        uint z = x/a;
        for (i =0; i < a; i++) {
            addressToVault[usersJoined[i]].commision = addressToVault[usersJoined[i]].commision + z;
            addressToVault[usersJoined[i]].timeLock = addressToVault[usersJoined[i]].timeLock + block.timestamp + timeLockConst;
        }
        usersJoined.push(msg.sender);
        a++;
        addressToVault[msg.sender].timeLock = timeLockConst;
        addressToVault[msg.sender].withdrawAmount = addressToVault[msg.sender].withdrawAmount + msg.value - z;
    }
    function checkBalance() public view returns(uint, uint) {
        Vault storage balance = addressToVault[msg.sender];
        return (balance.withdrawAmount, balance.commision);
    }
    function withdrawdFunds(uint _amount) public payable {
        require(msg.sender!=owner,"Owner has a seperate function.");
        Vault storage userData = addressToVault[msg.sender];
        require(_amount < userData.withdrawAmount, "You dont have enough amount");
        require(block.timestamp > userData.timeLock, "Wait for some time");
        payable(msg.sender).transfer(_amount);
        userData.withdrawAmount = userData.withdrawAmount - _amount;
    }
}