//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.7.0;

interface ERC223{
    function transfer(address _to,uint _value,bytes memory _data) external returns (bool);
    
    event Transfer(address indexed _from,address indexed _to,uint _value,bytes _data);
    
}