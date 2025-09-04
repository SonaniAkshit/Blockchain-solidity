// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FundMe {
    mapping(address => uint256) public addressToAmountFunded;
    address[] public funders;

    uint256 public constant MINIMUM_USD = 0.01 ether;

    function fund() public payable {
        require(msg.value >= MINIMUM_USD, "Send at least 0.01 ETH!");

        addressToAmountFunded[msg.sender] += msg.value;

        funders.push(msg.sender);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function withdraw() public {
        payable(msg.sender).transfer(address(this).balance);
}
}
