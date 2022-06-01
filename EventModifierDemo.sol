pragma solidity ^0.8.4;

contract EvenModifierContract{

    event logUserTx(address indexed userAddress, uint ammount);
    modifier onlyTwoEther(){
        //msg.value holds the amount of ether that was sent
        require(msg.value == 1 ether);
        _; // this is how we end a modifier
    }

    function sendEther() public payable onlyTwoEther(){
    emit logUserTx(msg.sender, msg.value);
    }
}