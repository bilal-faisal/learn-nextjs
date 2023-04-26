# Integers
In Solidity, integers are a fundamental data type used to represent whole numbers. Solidity provides several types of integers with different ranges and storage requirements. 


int(integer)			      ->	-ve , +ve
uint(unsigned integer)	->	+ve

size:	8 – 256 bit
intervals of 8 like int8, int16, int24, …, int 256


Here are the different types of integers in Solidity:

1. `uint8`, `uint16`, `uint32`, `uint64`, `uint128`, `uint256`: Unsigned integers with a fixed size of 8, 16, 32, 64, 128, and 256 bits, respectively. They are used to represent non-negative integers.

2. `int8`, `int16`, `int32`, `int64`, `int128`, `int256`: Signed integers with a fixed size of 8, 16, 32, 64, 128, and 256 bits, respectively. They are used to represent both positive and negative integers.

3. `uint`, `int`: These types have a dynamic size and their size is dependent on the size of the machine that is executing the code. `uint` is an alias for `uint256` and `int` is an alias for `int256`.

### Range

int8:				 
-2^8-1  to  2^8-1		
-127	to   127		

unt8:
0  to  2^8-1
0  to  255

int8 roll = 127	valid
int8 roll = 128	invalid

uint8 roll = 12	valid
uint8 roll = -12	invalid



- By default, an int is initialized to zero.
- Overflow get detected at compile time.


### Operations

Solidity also provides arithmetic and bitwise operators that can be used with integers, such as addition (+), subtraction (-), multiplication (*), division (/), modulo (%), bitwise AND (&), bitwise OR (|), bitwise XOR (^), bitwise NOT (~), left shift (<<), and right shift (>>).

It's important to note that arithmetic and bitwise operations can overflow and underflow in Solidity, which can lead to unexpected behavior. Therefore, it's recommended to use latest solidity version to prevent overflow and underflow.