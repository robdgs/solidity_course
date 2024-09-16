//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DataTypes
{
    uint256 myUint = 123; //positive integer number, the largest number is 2^256 - 1

    // !! Solidity does not support floating point numbers

    bool    myBool = true; // as every bool, true or false
    string  myString = "Ciao, I am a string!"; //I can put special characters between ""
    address payable myAddress = payable(0xD84BB42B831AEaE73E97346714B663Ef8d694b64);
    //"address" stores wallet addresses or contract addresses / ethereum addresses
    //"payable" makes you able to send tokens/currency to that address
    //(that address is my wallet's public address)
    bytes32 myBytes = "hello";

    //Now let's define array types:
    uint256[]   myUintArray = [1, 2, 3];
    //basically you are specifying the data type contained by your array
    bool[]      myBoolArray = [true, false, true];
    string[]    myStringArray = ["ciao", "pizza", "pasta"];
    address payable[] myAddressArray = [
        payable(0xD84BB42B831AEaE73E97346714B663Ef8d694b64),
        payable(0xD84BB42B831AEaE73E97346714B663Ef8d694b64),
        payable(0xD84BB42B831AEaE73E97346714B663Ef8d694b64)
    //I am putting the same address as an example, I do not have more than a wallet yet
    ];
    //CAN I PUT DIFFERENT DATA TYPES IN AN ARRAY?
    //short answer: no
    //long answer: yes, but we need a deeper dive in solidity first (but we will see that structs are better for that)
    //--------------------------------------------------------------------
    //bytes32[] : we can tecnically do it but we will never really need it

	//Define a struct with different types:
	
    struct Person 
    {
        string  name;
        uint256 age;
        bool    hasDriverLicense;
    }

    Person myPerson = Person("Roberta", 22, false);

    //Person here is my data type, look at what is a struct if this is unclear
    //myPerson is my variable name
}