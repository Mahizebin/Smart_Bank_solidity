pragma solidity ^0.8.4;

contract DataTypeContract{

    uint8 num8 = 4;
    uint16 num16 = 11234;
    uint256 num256 = 16362739535778;
    uint number256 = 13214235783539;

    uint []numArr = [5565, 4543657, 54364];


    int negPos = -67;
    int256  negPos256 = -2265438298239;



    bool tOrf = true;
    bool tOrf = false;

    bool constant tOrf = false;
    tOrf = true; // give error as we are changing the value of a constant



}