pragma solidity ^0.8.4;

contract StructFunctionContract{

    Product public laptop; 

    //define the custom datatype
    struct  Product {
        string productName;
        string category;
        uint price;
        uint16 code;


    }

    function initializeproduct() public {
        laptop = Product({productName: "Acer Laptop", category: "Electronics", price: 783658, code:1236});
    }
}