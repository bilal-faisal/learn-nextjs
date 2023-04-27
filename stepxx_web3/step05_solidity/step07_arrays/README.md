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