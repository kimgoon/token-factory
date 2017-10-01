pragma solidity ^0.4.15;

// https://github.com/ethereum/EIPs/issues/20
// Taken from https://theethereum.wiki/w/index.php/ERC20_Token_Standard


// defines the ERC20 interface
contract ERC20I
{
    function totalSupply() constant returns (uint totalSupply);
    function balanceOf(address _owner) constant returns (uint balance);
    function transfer(address _to, uint _value) returns (bool success);
    function transferFrom(address _from, address _to, uint _value) returns (bool success);
    function approve(address _spender, uint _value) returns (bool success);
    function allowance(address _owner, address _spender) constant returns (uint remaining);

    event Transfer(address indexed _from, address indexed _to, uint _value);
    event Approval(address indexed _owner, address indexed _spender, uint _value);
}
