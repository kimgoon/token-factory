pragma solidity ^0.4.15;

import "./ERC20I.sol";
import "./Owner.sol";

contract GenericToken is ERC20I, Owner
{

    // token symbol
    string public constant symbol = "GenericKimGoon";
    string public constant name ="Generic Fixed Supply Token";

    // hardcode the initial total supply of tokens
    uint public initialSupply = 1000000;

    // keep track of token balances per address
    mapping(address => uint) balance;
    function GenericToken()
    {
        balance[msg.sender] = initialSupply;
    }

    // Implement ERC20 interface
    function totalSupply() constant returns (uint totalSupply);
    function balanceOf(address _owner) constant returns (uint balance);
    function transfer(address _to, uint _value) returns (bool success);
    function transferFrom(address _from, address _to, uint _value) returns (bool success);
    function approve(address _spender, uint _value) returns (bool success);
    function allowance(address _owner, address _spender) constant returns (uint remaining);


}
