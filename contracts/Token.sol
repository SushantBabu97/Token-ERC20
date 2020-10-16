//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.7.0;

abstract contract Token{
    string internal _symbol;
    string internal _name;
    uint8 internal _decimals;
    uint internal _totalSupply=1000;
    
    mapping (address=>uint) internal _balanceOf;
    mapping (address=>mapping(address=>uint)) internal _allowances;
    
    constructor(string memory Symbol,string memory Name,uint8 Decimals,uint TotalSupply){
        _symbol=Symbol;
        _name=Name;
        _decimals=Decimals;
        _totalSupply=TotalSupply;
    }

    function symbol() public view returns (string memory){
        return _symbol;
    } 
    
    function name() public view returns (string memory){
        return _name;
    }

    function decimals() public view returns (uint){
        return _decimals;
    }
    
    function totalSupply() public virtual view returns (uint){
        return _totalSupply;
    }
    
    function balanceOf(address _addr) public virtual returns (uint);
    function transfer(address _to,uint _value) public virtual returns(bool);
    
    event Transfer(address _from,address _to,uint _value);
    
}
