// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract SimpleWallat {
    address public owner;


    event DepositReceived(address sender, uint amount);
    event WithdrawalMade(address receiver, uint amount);


    constructor() {
        owner = msg.sender;
    }


    function deposit() public payable {
        require(msg.value > 0, "You must send some Ether");
        emit DepositReceived(msg.sender, msg.value);
    }


    function getBalance() public view returns (uint) {
        return address(this).balance;
    }


    function withdraw() public {
        require(msg.sender == owner, "Only the owner can withdraw");
        uint amount = address(this).balance;
        require(amount > 0, "No balance to withdraw");
        payable(owner).transfer(amount);
        emit WithdrawalMade(owner, amount);
    }


    function getBalanceInEther() public view returns (uint) {
        return address(this).balance / 1.0 ether;
    }


    function getBalanceInGwei() public view returns (uint) {
        return address(this).balance / 1 gwei;
    }
}
