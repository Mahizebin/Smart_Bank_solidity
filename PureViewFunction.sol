pragma solidity ^0.8.4;

contract PureViewFn{

    uint256 num1 = 2;
    uint256 num2 = 4;

    function add() public view returns (uint256){
        return (num1 + num2);
    }

    //pure function donot view neither modify the state of the network
    function dosomething() public pure returns(uint256){
        return 1+1;
    }
}