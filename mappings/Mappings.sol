//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Mappings
{
    //this is again something available only in solidity
    mapping (uint => string) public myMap;

    //basically you are defining two data types that are going to be mapped one to the other
    // !! --> uint and uint256 are THE SAME THING, it is interchangeable

    // How to think about this mapping:
    // I have for example
    // user | user's name
    // 12    | Alex
    // 2     | Matteo
    // 36    | Roberta
    // my mapping function will do a kind of a match between what number is who
	
    function addValue(uint key, string memory value) public 
    {
        myMap[key] = value;
    }
    function getValue(uint key) public view returns (string memory)
    {
        return myMap[key]; //If I pass 2 as "key" getValue will give me back "Matteo"
    }
    function deleteValue(uint key) public
    {
        delete myMap[key]; // If I pass 2 as "key" matteo and key 2 will be deleted
    }
}