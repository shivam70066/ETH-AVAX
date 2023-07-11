# ETH-AVAX-module-1
Error Handling
  Final Assesment of module 1 

## Description

Create a solidity smart contract has three error handling statements (require, revert and assert)

## Getting Started

### Installing

I have used remix online compiler to write ,compile and deploy a basic smart contract
Use remix online compiler 

### Executing program

  Write the code in compiler or To run this file download the errorHandling.sol or copy the code and add it into remix 
  Compile the code using default compiler settings
  Deploy the code
  Open deployed contract and give required values to functions
 
### Theory
  There are three methods that constitute the error-handling process in Solidity:
          
          require(): Used to validate certain conditions before further execution of a function. It takes two parameters as an input.
          The first parameter is the condition that you want to validate and the second parameter is the message that will be passed back to the caller if the condition fails. If the condition is satisfied, then the execution of the function continues and the execution jumps to the next statement. However, if             the condition fails, then the function execution is terminated and the message (the second parameter) is displayed in the logs. The second parameter,               however, is optional. require() will work even if you pass only parameter, that is, the condition to be checked. 
          
          assert(): The assert function, like require, is a convenience function that checks for conditions. If a condition fails, then the function execution is terminated with an error message.assert() takes only one parameter as input. You pass a condition to assert(), and if the condition is true, then the               function execution continues and the execution jumps to the next statement in the function. 
          
          revert(): Can be used to flag an error and revert the current call. You can also provide a message containing details about the error, and the message will be passed back to the caller. However, the message, like in require(), is an optional parameter. revert() causes the EVM to revert all the changes             made to the state, and things return to the initial state or the state before the function call was made.
          The reason for reverting is that there is no safe way to continue execution because something unexpected happened. This is important as it helps in saving gas.
  
  The contract should obey:
  
    1. This contract will have three state variables and 3 function each using 1 error handling statement i.e. require ,revert ,assert.
        Code:
    2. We will have a deposit function that takes one parameter and increments value of balance by the amount passed and use 
        require statement to check if updated value of balance becomes larger then limitOfAccount i.e 1000 then  it reverted all the transaactions made in function adn refund the gas too
        and a error message will be displayed
        Code:
          function deposit(uint _transferAmount) public {
          balance += _transferAmount;
          require(balance <= limitOfAccount, "Account Limit Reached");
        }    
    
    2. We will have a withdraw function that takes one parameter and decrements value of balance by the amount passed and use 
        revert statement to check if user withdraw amount less than 10 if it's not then the error message will display 
        Code:
            function withdraw(uint _withdrawAmount) public {
              if (_withdrawAmount >10) {
              revert("You Cannot withdraw amount more then 10 eth");
              }
            balance -= _withdrawAmount;
            }
    
    4. We will have a isOwner function that takes no parameter and check wheter function is called by true owner or not
       Code:
       
           function isOwner() public view{
              assert( owner == msg.sender );

            }



## Authors

22mca20112@cuchd.in (Shivam Gupta)


## License

This project is licensed under the Shivam License
