=begin
	
Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

 

Example 1:

Input: nums = [1,2,3,1]
Output: true
Example 2:

Input: nums = [1,2,3,4]
Output: false
Example 3:

Input: nums = [1,1,1,3,3,4,3,2,4,2]
Output: true
	
=end

def contains_duplicate(input)
	lookup = {}
	i = 0
	while(i<input.size())
		return true if lookup.key?(input[i])
		lookup[input[i]] = 1
		i = i + 1
	end
    
    return false
	
end

puts contains_duplicate([1,2,3,1])

puts contains_duplicate([1,2,3,4])
puts contains_duplicate([1,1,1,3,3,4,3,2,4,2])