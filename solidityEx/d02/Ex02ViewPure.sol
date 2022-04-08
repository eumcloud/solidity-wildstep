// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract ViewPureExam {
    // 1) view : function 밖의 변수들을 읽을 수 있고 value는 변경 불가능
    // 2) pure : function 밖의 변수들을 읽지 못하며 변경 불가능
    // 3) pure와 view를 명시하지 않을 때 : function 밖의 변수들을 읽어서 변경한다

    // 예제
    // 1. view
    uint256 public a = 1;
    
    function readA() public view returns(uint256) {
        return a + 5;
    }

    // 2. pure
    function readVariable() public pure returns(uint256) {
        uint nNum = 5;
        return 3 + 7 + nNum;
    }

    // 3. pure, view 명시하지 않음
    function readDefault() public returns(uint256) {
        a = 22;
        return a;
    }
}

