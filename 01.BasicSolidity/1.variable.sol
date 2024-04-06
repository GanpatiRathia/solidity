// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract SolidityTest {
   uint storedData; // State variable
   constructor()  {
      storedData = 10;   
   }
   function getResult() public view returns(uint){
      uint a = 1; // local variable
      uint b = 2;
      uint result = a + b; //result = 3
      return storedData + result; //access the state variable and local variable
      //10 + 3 does not changes state variable therefore we are using view
   }
}