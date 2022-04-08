// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract ErrorExam {
    function testRequire(uint _i) public pure {
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint _i) public pure {
        if(_i <= 10)
        {
            revert("Input must be greater than 10");
            //revert를 만나면 아래 실행내용 없음.
        }
    }
    uint public num;
    //assert는 절대 거짓이 되어서는 안 되는 코드를 확인하는데 사용된다.
    //assertion 실패는 아마도 버그가 있음을 의미한다.
    function testAssert() public view {
        assert(num == 0);
    }

    //custom error
    error InsufficientBalance(uint balance, uint withdrawAmount);
    
    function testCustomError(uint _withdrawAmount) public view {
        // uint bal = address(this).balance; 이전 버전 방식
        uint bal = address(msg.sender).balance; //여러 버전 통용 (너무 하위버전은 안될 수 있음)
        if(bal < _withdrawAmount) {
            revert InsufficientBalance({balance:bal, _withdrawAmount: _withdrawAmount});
        }
    }
    
}