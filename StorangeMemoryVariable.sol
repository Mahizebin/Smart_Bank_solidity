pragma solidity ^0.8.4;

contract StorageMemoryVarContract{
   //state variables or contract variables
    uint[] public numArray;

    function operate() public {
        numArray.push(10);
        numArray.push(11);
        numArray.push(12);

        /*uint[] storage newnumArray = numArray;
        newnumArray[1]= 15;*/

        uint[] memory newnumArray = numArray;
        newnumArray[1]= 15;
    }



}