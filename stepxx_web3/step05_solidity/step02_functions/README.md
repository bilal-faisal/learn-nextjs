# Functions

In Solidity, functions are used to encapsulate a set of instructions that can be executed together. A function can be used to perform a specific task and return a value or not.

```sh
    uint256 age = 21;

    function getAge() public view returns (uint256) {
        return age;
    }
```

As we’re making changes to our state variable in setter function, so gas is required as a change is hapening in the blockchain. But for getter function, no change is occuring in blockchain so no gas is required.

- When you call a setter function it creates a transaction that needs to be mined and costs gas because it changes the blockchain. Vice versa for getter function.
- When you declare a public state variable a getter function is
  automatically created.
- By default variable visibility is private.


The following function takes two uint parameters, adds them together, and returns the result as a uint. The public visibility keyword means that this function can be called from any other contract or externally. The returns keyword specifies the data type of the return value.

```sh
    function add(uint x, uint y) public returns (uint) {
        return x + y;
    }
```
