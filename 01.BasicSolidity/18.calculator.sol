pragma solidity ^0.8.4;

abstract contract Calculator {
    function getResult() public view virtual returns(uint256);
}

contract Test is Calculator {
   uint256 a;
   uint256 b;
        
    constructor(){
      a = 1;
      b = 2;    
    }

    function getResult() public virtual override view returns(uint256) {
        uint256 result = a + b;
        return result;
    }
}