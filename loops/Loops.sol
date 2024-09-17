// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Loops 
{
    //here we create an array of numbers
    
    uint256[] public numbers;

    //this constructor takes in an array of numbers

    constructor(uint256[] memory _numbers)
    {
        //we are going to set the value of the constant of the variable to the value
        //of the array we just sent in
        numbers = _numbers;
    }

    //now we actually loop through the array with a for loop

    //disclaimer & reminder: this code is meant to show solidity's syntax
    //                       the reader has to have a background knowledge on main
    //                       general programming topics

    function sumWithForLoop() public view returns (uint256)
    {
        uint256 sum = 0;
        for(uint i = 0; i < numbers.length; i++)    //as JS does, solidity has native array functions
        {
            sum += numbers[i];
        }
        return sum;
    }

    //now we will do the same with a while loop

    function sumWithWhileLoop() public view returns (uint256)
    {
        uint256 sum = 0;
        uint256 i = 0;
        while (i < numbers.length)
        {
            sum += numbers[i];
            i++;
        }
        return sum;
    }
    
    //again but with a do while loop
    //(I personally prefer using while loop, but the choice is always up to you)

    function sumWithDoWhileLoop() public view returns (uint256)
    {
        uint256 sum = 0;
        uint256 i = 0;
        do
        {
            sum += numbers[i];
            i++;
        } while(i < numbers.length);
        return sum;
    }
}