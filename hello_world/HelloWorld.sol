//SPDX-License-Identifier: MIT

/* now I specify the sol version I'm gonna work with */

//this means that my program will work with every sol ver >= 0.8.0

pragma solidity ^0.8.0;

//any contract needs a contract object and we need to specify the name of it:

contract HelloWorld
{
    string greeting;

    //the constructor is a function that runs once when you deploy the app
    //it is great to set values
    constructor()
    {
        greeting = "Hello, World";
    //reminder: in solidity you need to put the  ; as you do in C
    }

    function sayHello() public view returns (string memory)
    {
        //public: you can call the function from outside of this contract
            //if you declare it private or internal, you wouldn't be able to do that
        //view: it means it is a read only function (it will not be able to change any value
            //or do any kind of permission-related things)
        //return: what the function will return
        //(string memory): the data type of what will be returned + "memory"
            //just use memory when you have to return a string, solidity does not support returing
            //dynamic values in functions (so you need to specify memory)

        return greeting;
    }
}