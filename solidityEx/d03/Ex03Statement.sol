// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleState {
    // Definen state variable
    uint public num;

    function setNum(uint _num) public {
        num = _num;
    }

    function getNum() public view returns (uint){
        return num;
    }
}