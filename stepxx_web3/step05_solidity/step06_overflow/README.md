# Overflow

Two main problem were seen in erc20 token in april 2018, batch and proxy overflow.
Large amount of ethers were being trasfer but were not able to account.

Overflow problem: 

Lets say you have a variable count which is uint8 and value stored in it was 255. Make a increment function and when we call that increment function, count value became 0. This was a major problem back then.

This problem has been resolved in solidity 0.8.0. Now such transaction basically fails.
And we get “The transaction has been reverted to the initial state”