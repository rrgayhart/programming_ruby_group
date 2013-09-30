#Containers, Blocks, and Iterators

###Arrays
  - An array holds a collection of object references that each have a position in the array. The first position is array[0] and the last is array[-1]. 
  - You can index an array using ranges of positions. For example, you can find the first three elements of a five element array by using: array[0..2] which produces an array that contains array[0], array[1], and array[2]. 
  - You may also change elements in the array by using the [ ] = method, which looks like this: array[0] = 1. This will change the first element in your array from whatever it was previously to the integer 1. 
  - To add a new element to the end of your array, use the push method. For example: array.push “bat”

###Hashes
- Hashes are similar to arrays (a collection of objects), but instead of just being a non-indexed collection, hashes have key and value pairs where keys can be symbols, strings, regular expressions, etc. The index value is the key, and the value is a corresponding entry to be stored with the key. Hashes are advantageous in that that can use any object as an index.
