=begin
  Given an integer x, return true if x is a 
palindrome
, and false otherwise.

 

Example 1:

Input: x = 121
Output: true
Explanation: 121 reads as 121 from left to right and from right to left.
Example 2:

Input: x = -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
Example 3:

Input: x = 10
Output: false
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 

Constraints:

-231 <= x <= 231 - 1
 

Follow up: Could you solve it without converting the integer to a string?

  
=end

def is_palindrome(x)
  return false if x < 0 #negative numbers aren't palindromes
  original = x  # because we are going to modiy the input x
  reverse = []
  l = 0 

  #construct reverse array - O(n) time and space

  while x != 0
    reverse.push(x % 10) #keep pushing the last digit in ech iteration
    x = x / 10
    l += 1
  end

  #reconstruct the reverse array into the reverse number O(n)
  number = 0
  i = 0
  while i < l
    number += reverse[i] * (10 ** (l - i - 1)) #eg 4321 = 4*(10**3) + 3*(10**2) + 2*(10**1) + 1*(10**0)
    i += 1
  end
  puts number

  #total complexity O(n) + O(n) which can be considers as O(n)

  return number == original
end