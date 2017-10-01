pragma solidity ^0.4.15;

// Base class to be used by contracts that need to enforce ownership
contract Owner {

    address public owner;
    function Owner() {
        owner = msg.sender;
    }

    modifier fromOwner() {
        require(msg.sender == owner);
        _;
    }

    function getOwner()
        public
        returns (address)
    {
        return owner;
    }

    function changeOwner(address newOwner)
        public
        fromOwner()
        returns (bool)
    {
        owner = newOwner;
        return true;
    }
}
