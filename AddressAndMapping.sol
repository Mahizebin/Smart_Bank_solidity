pragma solidity ^0.8.4;

contract AddressAndMapping{

    address user1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    //at a particular address store an uint value
    mapping (address =>uint) public balance;

    function getBalance() public {
        balance[user1] = 170;
    } 
}