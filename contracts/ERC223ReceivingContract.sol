//SPDX-License-Identifier:UNLICENSED

pragma solidity ^0.7.0;

abstract contract ERC223ReceivingContract{
    function tokenFallback(address _from,uint _value,bytes memory _data) public virtual;
}