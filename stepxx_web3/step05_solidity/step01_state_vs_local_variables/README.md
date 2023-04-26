# State Variables
State variables are used to store the contract's data on the blockchain. They represent the contract's state and are persisted across function calls and transactions. State variables are declared within a contract and are generally used to store information, such as balances, ownership, or other data that needs to be tracked throughout the contract's lifetime.


- Variables that are declared on contract level.
- Stored permanently in blockchain contract storage.
- Some amount of gas is required.
- The more state variables you declare, the more gas would be required.

You can’t do this while declaring a state variable.

```sh
unint public age;
age = 21;
```
You can’t initialize a state variable like this.

Instead, What you can do is:
```sh
    unint public age = 21;
```
OR 
```sh
	constructor() 
       age = 21;
    }
```
OR 
```sh
	function setAge() public {
       age = 22;
    }
```
Whenever you declare a new state variable, you have to compile and deploy the contract again.

# Local Variables
In Solidity, local variables are variables that are declared within a function or a block of code. They have a limited scope and are only accessible within the function or block where they are declared. Once the function finishes execution, the local variables are destroyed, and their memory is freed. This is in contrast to state variables, which are stored on the blockchain and have a lifetime equal to the contract's existence.

- Declared inside functions and are keep on the stack, not on storage.
- Don't cost gas.
- There are some types that reference te storage by default
- Memory keyword can't be used at contract level

There are some data types having default storage type as contract storage.	
Means they can only declare on contract level. (string, struct, array etc)

```sh
    function setAge() pure public {
        string name = "Bilal";  
    }
```

The above code will give an error.

Here a conflict is happening as function wants to store it on stack but string stores in contract storage by default.
If still want to make it local, then use memory keyword.

```sh
    function setAge() pure public {
        string memory name = "Bilal";
    }
```

Now that variable will neither be stored in stack nor in contract storage but in our memory.

### Conclusion:
In short, the main differences between state and local variables in Solidity are:

- Scope: State variables have a contract-wide scope, while local variables have a limited scope within the function or block they are declared in.
- Storage: State variables are stored on the blockchain, while local variables are stored in memory or on the stack and are not persisted on the blockchain.
- Lifetime: State variables persist throughout the contract's lifetime, while local variables are destroyed after the function's execution is complete.
- Cost: State variables have higher gas costs due to storage on the blockchain, whereas local variables have lower gas costs since they are stored in memory or on the stack.