=begin
	
Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.

 

Example 1:

Input: nums = [1,2,3,4]
Output: [24,12,8,6]
Example 2:

Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]

	
=end

=begin
	
concept

    input  (1) 1 2  3 4 (1)
	prefix     1 1  2 6
	postfix   24 12 4 1
    output    24 12 8 6

    now trying to do without seperate prefix and postfix arrays

    	prefix = 1, postfix = 1

    	prefix iteration in the output array itself
    	input  1 2 3 4
	    output 1 1 2 6

	    postfix interation in the output array itself
        
        input        1  2  3  4
	    temp_output  1  1  2  6 
	    
	    output       24  12 8  6  
=end

def array_product(input)
   output = []

   #prefix-iteration - output array is set to prefix array
   prefix = 1
   i = 0
   while(i<input.size)
    output[i] = prefix
    prefix = input[i] * prefix
   	i = i +1
   end

   #final iteration - outpur array is set to postfix * prefix array
   postfix = 1
   j = input.size-1
   while j >=0
   	output[j] = output[j] * postfix
   	postfix = input[j] * postfix
   	j = j-1
   end

   output


end

print array_product([1,2,3,4])
puts
print array_product([-1,1,0,-3,3])
