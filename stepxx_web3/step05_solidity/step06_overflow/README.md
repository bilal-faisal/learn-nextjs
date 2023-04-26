# Overflow

Two main problem were seen in erc20 token in april 2018, batch and proxy overflow.
Large amount of ethers were being trasfer but were not able to account.

Overflow problem:

Lets say you have a variable count which is uint8 and value stored in it was 255. Make a increment function and when we call that increment function, count value became 0. This was a major problem back then.

This problem has been resolved in solidity 0.8.0. Now such transaction basically fails.
And we get “The transaction has been reverted to the initial state”

## Read More

### [New batchOverflow Bug in Multiple ERC20 Smart Contracts (CVE-2018–10299)](https://peckshield.medium.com/alert-new-batchoverflow-bug-in-multiple-erc20-smart-contracts-cve-2018-10299-511067db6536)

### [Integer Overflow (i.e., proxyOverflow Bug) Found in Multiple ERC20 Smart Contracts (CVE-2018–10376)](https://peckshield.medium.com/integer-overflow-i-e-proxyoverflow-bug-found-in-multiple-erc20-smart-contracts-14fecfba2759)
