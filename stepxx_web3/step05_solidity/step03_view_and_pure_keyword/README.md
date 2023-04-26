# View and Pure keywords

In Solidity, the `view` and `pure` keywords are used to specify functions that do not modify the state of the contract.

# View

The `view` keyword is used to indicate that a function does not modify the state of the contract and only reads from it. Such functions can be called for free (i.e., without paying any gas fees) by other functions or contracts, and can be executed locally by a client without needing to send a transaction to the blockchain.

For example:

```
function getBalance() public view returns (uint256) {
    return balance;
}
```

## Pure

The `pure` keyword is used to indicate that a function does not read from or modify the state of the contract. Such functions can also be called for free, and can be executed locally by a client.

For example:

```
function add(uint256 x, uint256 y) public pure returns (uint256) {
    return x + y;
}
```

Note that if a function modifies the state of the contract, it cannot be marked as `view` or `pure`. If you attempt to do so, you will get a compiler error.

# View vs Pure keyword

View or pure keyword is used for that functions where we don’t modify our state variables.
If we don’t use view or pure, then compiler will give a warning.

pure -> nor changing or reading the state var
view -> reading the state var

```sh
    function viewFunction() public view returns (uint256) {
        return age;
    }

    function pureFunction() public pure returns (uint256) {
        uint256 roll = 231;
        return roll;
    }
```

View is suitable in both conditions but it’ll give a warning if the function is not reading any state var means a view keyword can be used where pure should be used but with a warning.
