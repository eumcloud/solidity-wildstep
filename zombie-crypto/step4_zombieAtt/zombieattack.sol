pragma solidity ^0.4.19;

import "./zombiehelper.sol";

contract ZombieBattle is ZombieHelper {

    /**
    * @brief 순수하게 공평한 상황을 만들기위한 랜덤값. 
    "조작이 없다는걸 증명하기위한 랜덤수 생성"
    */
    uint randNonce = 0;
    function randMod(uint _modulus) external returns(uint){
        randNonce++;
         returns uint(kecck256(now, msg.sender, randNonce)) % _modulus;
    }


}
