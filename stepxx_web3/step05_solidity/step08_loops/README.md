# Loops in Solidity

## Introduction
Loops are an essential programming concept in any programming language, including Solidity, the primary language used for writing smart contracts on the Ethereum blockchain. Loops are used to perform repetitive tasks, reducing the need for code duplication and making it easier to manage and maintain code. In Solidity, loops can be implemented using `for`, `while`, and `do-while` constructs.


Note: You can’t write a loop directly in your contract storage. You have to make a function for that.


## 1. For Loops
`For` loops are used when you want to iterate through a specified range of values or execute a block of code for a predetermined number of times. The `for` loop has three main components: initialization, condition, and iteration.

**Syntax:**
```solidity
for (initialization; condition; iteration) {
    // Code to be executed
}
```

## 2. While Loops
`While` loops are used when you want to execute a block of code as long as a specific condition is true. The loop will continue to execute the code until the condition evaluates to false.

**Syntax:**
```solidity
while (condition) {
    // Code to be executed
}
```

## 3. Do-While Loops
Do-while loops are similar to while loops, with one key difference: the block of code is executed at least once before checking the condition. After the initial execution, the loop continues to run as long as the condition is true.

**Syntax:**
```
do {
    // Code to be executed
} while (condition);
```