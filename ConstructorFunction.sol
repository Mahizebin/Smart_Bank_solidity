pragma solidity ^0.8.4;

contract ConsFunc{

    address public owner;


//special function that cannot be called outside
//its called only once when the smart contract gets deployed on the network
    constructor(){
//msg.sender => it holds the address which is used to deploy the contract
        owner = msg.sender;

    }
function changeOwnership(address newOwner)public {
   require(owner == msg.sender, "only the owner can change the current owner");
    owner = newOwner;
 }

}