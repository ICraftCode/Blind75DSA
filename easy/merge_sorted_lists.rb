=begin
	
You are given the heads of two sorted linked lists list1 and list2.

Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

Return the head of the merged linked list.

 

Example 1:


Input: list1 = [1,2,4], list2 = [1,3,4]
Output: [1,1,2,3,4,4]
Example 2:

Input: list1 = [], list2 = []
Output: []
Example 3:

Input: list1 = [], list2 = [0]
Output: [0]
 

Constraints:

The number of nodes in both lists is in the range [0, 50].
-100 <= Node.val <= 100
Both list1 and list2 are sorted in non-decreasing order.
	
=end
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  l1 = list1
  l2 = list2

  if l1 == nil
    return l2 unless l2 == nil
    return nil
  end
  
   if l2 == nil
    return l1 unless l1 == nil
    return nil
  end
 
  if l1.val <= l2.val
    root = l1
    l1 = l1.next
  else
    root = l2
    l2 = l2.next
  end

  head = root

  while l1 || l2
    if l1.nil?
      root.next = l2
      return head
    end

    if l2.nil?
      root.next = l1
      return head
    end

    if l1.val <= l2.val
      root.next = l1
      l1 = l1.next
    else
      root.next = l2
      l2 = l2.next
    end

    root = root.next
  end

  head
end
