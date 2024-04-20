=begin
	
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

 

Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
Example 2:

Input: nums = [3,2,4], target = 6
Output: [1,2]
Example 3:

Input: nums = [3,3], target = 6
Output: [0,1]
	
=end

#solution - time cx O(n), space cx o(n)

def two_sum input, target
	lookup = {}
	i = 0
	while (i < input.size)
		difference = target - input[i]
		if lookup.key?(difference)
			return lookup[difference], i
		end
		lookup[input[i]] = i
		i = i + 1
	end
	return nil
end

puts two_sum([2,7,11,15], 9)

#solution2 - space complexity O(1) - sort (n logn) - hare n tortoise - O(n)
