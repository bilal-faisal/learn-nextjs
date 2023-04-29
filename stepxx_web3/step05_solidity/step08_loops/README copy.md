# Arrays
In Solidity, an array is a collection of elements of the same type, stored in contiguous memory locations. Solidity supports both static and dynamic arrays.

## Static arrays
Static arrays have a fixed size that is specified at compile time and cannot be changed during runtime. They are declared using the syntax type[size], where type is the data type of the elements and size is the number of elements in the array.

```
		uint[4] public arr = [1,2,3,4];
```

## Dynamic arrays
Dynamic arrays, on the other hand, have a variable size that can be changed during runtime. They are declared using the syntax type[], where type is the data type of the elements. Dynamic arrays can be resized using the push() and pop() functions, or by assigning a new array to an existing dynamic array variable.

```
		uint[] public arr;
		// now we can use push() and pop() methods on arr
```

push() - add element to last
pop() - remove element from last



Arrays in Solidity can be used to store and manipulate data such as addresses, integers, and custom data structures. They are often used to implement lists, queues, and other data structures in smart contracts.

## Byte Array

Everything that will be stored in the byte array will be in the form of hexadecimal digit.

- 1 byte = 8 bits
- 1 hexadecimal digit = 4 bits
- So, 1 byte has 2 hexa decimal numbers

### Fixed-size byte array

In solidity, we have
bytes1, bytes2, butes3, ... , bytes32
where 1, 2, 3, ... , 32 donates no of bytes.


If we write bytes2, then 16 bits will be created for us.

```
bytes2 public b2;
// 2 bytes array	0x0000

bytes3 public b3;
// 3 bytes array	0x000000

b2= "ab”// 0x6162
b3= "abc”	// 0x616263
```

The character 'a' has an ASCII value of 97 in decimal. When you convert the decimal number 97 to hexadecimal, you get 61. So, the hexadecimal representation of the ASCII value of the character 'a' is 61.


When you enter such value in array whose size is lesser than the array size, then padding of zeroes will be applied at the end.
```sh
bytes3 public b3='a’// 0x610000
```


Byte array is kind of immutable means we can't do this
```
b3[1] ='d';		// 	Error: Single bytes in fixed bytes arrays cannot be modified.
```

### Dynamic-size byte array

Use 'bytes' which is shorthand for bytes[]

```
	bytes public b1='abc’

    function getElement(uint i) public view returns(bytes1) {
        return b1[i];
    }
```

Can use:
- push()	// to insert element at last
- pop()		// to remove element from last
