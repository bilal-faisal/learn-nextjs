# Smart Contract

A smart contract is a self-executing agreement between two or more parties that runs on a blockchain network. It's a digital code that automatically enforces the terms of the contract when specific conditions are met. Think of it as a digital agreement where the rules are pre-programmed, and the contract carries out actions automatically, without the need for intermediaries like lawyers or banks. Smart contracts can be used for various purposes, such as transferring money, voting, or managing property ownership.


# Smart Contract Compilation

Smart contract compilation is the process of converting the human-readable smart contract code, usually written in a programming language like Solidity or Vyper, into machine-readable bytecode. This bytecode is what runs on the blockchain network.

The compilation process involves these main steps:

1- Writing the smart contract: Developers write the code for the smart contract using a programming language designed for blockchain platforms, such as Solidity for Ethereum.

2- Compiling the code: The written code is then compiled using a compiler tool specific to the programming language. The compiler checks the code for errors, optimizes it, and converts it into bytecode.

3- Deployment: After successful compilation, the bytecode is deployed to the blockchain network, where it becomes a part of the network and can be executed.

4- Execution: Once deployed, the smart contract can be executed by the nodes on the blockchain network whenever the required conditions are met.

Solidity Compiler turns code into Byte code and ABI(Application Binary Interface)

The compiled bytecode is essential for smart contracts to run on the blockchain network because it is a more efficient and secure format that can be easily read and executed by the nodes participating in the network.


### Smart Contract Example:

```sh
pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
    string private stateVariable = "Hello World";

    function getHelloWorld() public view returns (string memory){
        return stateVariable;
    }
}
```

### ABI:
>[
>	{
>		"inputs": [],
>		"name": "getHelloWorld",
>		"outputs": [
>			{
>				"internalType": "string",
>				"name": "",
>				"type": "string"
>			}
>		],
>		"stateMutability": "view",
>		"type": "function"
>	}
>]

### Bytecode:

>60806040526040518060400160405280600d81526020017f48656c6c6f20782
>0576f726c640000000000000000000000000000000000000081525060009081
>61004891906102ab565b5034801561005557600080fd5b5061037d565b60008
>1519050919050565b7f4 …cont… 1505b6020821081036101ec576101eb6101
>92565b5b5091905056fea2646970667358221220d8eaf397ddb23e449e393c3
>d63a1bfa05e8455f1aaa69c7500c7f2fd205f956164736f6c63430008120033



- Contract Bytecode is public in readable form.
- Contract does'nt have to be public. 
- Bytecode is immutable.
- ABI act as a bridge between applications and smart contract.
- ABI and bytecode cannot be generated without source code.

