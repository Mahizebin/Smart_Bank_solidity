// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract SmartBankContract{
    //at this address store a uint value
    mapping(address => uint) public accountList;

//this modifier will check if the particularaccount has sufficient balance    
    modifier hasBalance(uint _amt){
        require(_amt <= accountList[msg.sender], "Low Balance");
        _;
    }

   //with payable the contract is going to receive ether and we are updating account list with the sender's address and sender's ether value 
    function depositFund() public payable {
        accountList[msg.sender] += msg.value;
    }

    /*whoever is trying to withdraw the ether, we first validate the balance
    then the ammount of ether is transferred back to the address of the withdrawer*/
    function withdrawFund(uint _amt) public hasBalance(_amt){
        payable(msg.sender).transfer(_amt);
    }

    //return the total balance of all accounts stored at the address of this smart contract
    function checkContractBalance() public view returns(uint){
        return address(this).balance;
    }
}