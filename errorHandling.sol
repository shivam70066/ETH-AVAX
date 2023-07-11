// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract ErrorHandling {
    
    uint public balance= 100;
    uint public limitOfAccount = 1000;
    address public owner = msg.sender;

    //In account you can't hold more then 1000 eth
    function deposit(uint _transferAmount) public {
        balance += _transferAmount;
        require(balance <= limitOfAccount, "Account Limit Reached");
    }

    
    //Cannot withdraw more than 10 eth at once
    function withdraw(uint _withdrawAmount) public {
        if (_withdrawAmount >10) {
            revert("You Cannot withdraw amount more then 10 eth");
        }
        balance -= _withdrawAmount;
    }

    function isOwner() public view{

        assert( owner == msg.sender );

    }
}
