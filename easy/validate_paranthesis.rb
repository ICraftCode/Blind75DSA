=begin
	
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Every close bracket has a corresponding open bracket of the same type.
 

Example 1:

Input: s = "()"
Output: true
Example 2:

Input: s = "()[]{}"
Output: true
Example 3:

Input: s = "(]"
Output: false
 

Constraints:

1 <= s.length <= 104
s consists of parentheses only '()[]{}'.
	
=end
# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
    pairs = { "(" => ")", "{" => "}", "[" => "]" }

    s.each_char do |c|
        if pairs.keys.include? c
          stack << c
        elsif pairs.values.include? c
          p = stack.pop
          if pairs[p] != c
            return false
          end
        else
          return false
        end
    end
    return stack.empty?
end

