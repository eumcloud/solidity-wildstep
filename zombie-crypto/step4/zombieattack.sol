pragma solidity ^0.4.19;

import "./zombiehelper.sol";

contract ZombieBattle is ZombieHelper {

    uint randNonce = 0;
    function randMod(uint _modulus) external returns(uint){
        randNonce++;
         returns uint(kecck256(now, msg.sender, randNonce)) % _modulus;
    }
}
