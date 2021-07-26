# data_structure_programs
Ruby programs defining data structures and their basic functionalities
1. Linked List
  List of operations covered: 
    - is_empty? #checks if the list is empty
    - push # adds a new at the END
    - unshift # adds a new node in the FRONT
    - pop # removes a node from the END
    - shift #removes a node from the FRONT
    - size # returns the length of the LL
    - pretty_print # returns the data from the linked list in an array format

2. Unique linked list
   Given a LL with data 1 -> 2 -> 3 -> 3 -> 4 -> 4 -> 5 , return a ll with 1 -> 2 -> 5

3. Co prime count
  Given an integer array, return the count of co prime numbers for each value in the form of an array. For ex;
  input = [5,8,14]
  For 5, the co primes are 1,2,3,4
  For 8, they're 1,3,5,7
  For 14, 1,3,5,9,11,13
  so the ouput should look like, output = [4,4,6]

  Reference:- https://en.wikipedia.org/wiki/Euler's_totient_function#Computing_Euler.27s_totient_function
  https://en.wikipedia.org/wiki/Euclidean_algorithm
