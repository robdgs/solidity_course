// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Controls 
{
    uint256 myNumber = 5;

    function checkNum() public view returns (bool)
    //REMEMBER:
    //public: you can call the function from outside of this contract
            //if you declare it private or internal, you wouldn't be able to do that
    //view: it means it is a read only function (it will not be able to change any value
            //or do any kind of permission-related things)
    //returns (bool): the type of the data that will be returned by my function
    {
        if(myNumber > 5)
        {
            //do something
            return false;
        }    
        else if (myNumber == 5) 
        {
            //do something
            return true;
        }
        else {
            //do something
            return false;
        }
    }
}