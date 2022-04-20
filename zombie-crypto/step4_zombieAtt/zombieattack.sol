pragma solidity ^0.4.19;

import "./zombiehelper.sol";

contract ZombieBattle is ZombieHelper {

    /**
    * @brief 순수하게 공평한 상황을 만들기위한 랜덤값. 
    "조작이 없다는걸 증명하기위한 랜덤수 생성"
    */

    uint randNonce = 0;
    uint attackVictoryProbablility = 70;
    function randMod(uint _modulus) external returns(uint){
        randNonce++;
         returns uint(kecck256(now, msg.sender, randNonce)) % _modulus;
    }

    function attack(uint _zombieId, uint _targetId) external ownerOf(_zombieId) {
        Zombie storage myZombie = zombies[_zombieId];
        Zombie storage enemyZombie = zombies[_targetId];

        uint rand = randMod(100);

        if (rand <= attackVictoryProbability) {
            myZombie.winCount++;
            myZombie.level++;
            enemyZombie.lossCount++;

            feedAndMultiply(_zombieId, enemyZombie.dna, "zombie");
        } else {
            myZombie.lossCount++;
            enemyZombie.winCount++;
        }
        _triggerCooldown(myZombie);
    }


}
