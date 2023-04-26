# Constructor

A special type of function that executes only once when your contract is created.
In Solidity, a constructor is a special function that gets executed only once during the creation of a contract. It is used to initialize the state variables of the contract and perform any other setup that needs to be done before the contract can be used.

The constructor function has the same name as the contract and does not have a return type. It can have arguments that are used to initialize the state variables.

Use Cases:

- Initializing state variable.
- Deciding contract owner.

```sh
    constructor(uint newAge) {
        age = newAge;
    }
```

- Executed only once.
- You can create only one constructor and that is optional.
- A default constructor is created by the compiler if there is no explicitly defined constructor.

```sh
    contract MyContract {
      uint256 public myVariable;

      constructor(uint256 initialValue) {
        myVariable = initialValue;
      }

      function setMyVariable(uint256 newValue) public {
        myVariable = newValue;
      }
    }
```

In this example, the constructor takes an argument initialValue, which is used to set the value of the myVariable state variable. The setMyVariable function can be used to change the value of myVariable after the contract has been created.
