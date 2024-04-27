=begin
	
Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

 

Example 1:

Input: strs = ["flower","flow","flight"]
Output: "fl"
Example 2:

Input: strs = ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
 

Constraints:

1 <= strs.length <= 200
0 <= strs[i].length <= 200
strs[i] consists of only lowercase English letters.
	
=end

class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

class PrefixTree
  attr_reader :root

  def initialize(word)
    return if word == ""
    return unless word
    @root = Node.new(word[0])
    node = @root
    word[1..word.length].each_char do |char|
       node.next_node = Node.new(char)
       node = node.next_node
    end
    return @root
  end

  def insert(word)
    node = @root
    w = 0
    prev = node
    while(w<word.length)
     return unless node 
     if(node.value == word[w])
        prev = node
        node = node.next_node
     else
        if node == @root
            @root=nil
            return
        end
        prev.next_node = nil
     end
     w = w + 1
    end
    prev.next_node = nil if node != nil
  end

  def prefix
    return "" unless root
    node = @root
    prefix = ''
    while(node)
        prefix += node.value
        node = node.next_node
    end
    prefix
  end

end

# @param {String[]} strs
# @return {String}
# Find the longest common prefix
def longest_common_prefix(strs)
  return '' if(strs.empty? || strs.first == "")
  prefix_tree = PrefixTree.new(strs.first)
  strs[1..strs.length].each do |word|
    return "" if word == ""
    prefix_tree.insert(word)
  end
  prefix_tree.prefix
end

