// SPDX-License-Identifie: MIT
pragma solidity ^0.8.13;

contract EtherWeiExam {
    uint public oneWei = 1 wei;

    // 1 wei same as 1
    bool public isOneWei = (1 wei == 1);

    uint public oneEther = 1 ether;

    // 1 ehter same as 10^18 wei
    bool public isOneEther = (1 ether == 10**18);
}