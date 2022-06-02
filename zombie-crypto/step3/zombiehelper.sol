pragma solidity ^0.4.19;

import "./zombiefeeding.sol";

contract ZombieHelper is ZombieFeeding {

    modifier aboveLevel(uint _level, uint _zombieId){
        require(zombies[_zombieId].level >= _level);
        _;
    }

    function changeName(uint _zombieId, string _newName) external abovelevel(2, _zombieId){
        require(msg.sender == zombieToOwner[_zombieId]);
        zombies[_zombieId].name = _newName;
    }
}