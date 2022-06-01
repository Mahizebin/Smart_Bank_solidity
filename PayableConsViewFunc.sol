pragma solidity ^0.8.4;

contract PayableView {

 //if we have payable constructor then we can send Ether to the smart contract   
    
    constructor() payable{


    }
    //this function is not going to change the state of the networkor change the smaert contract
    function checkBalance() public view returns (uint256){
                                //gives the address of the smart contract    
        uint256 balance = address(this).balance;
        return balance;
    }
}