#From LeetCode 141
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  if head == nil
      return false
  end
  slow = head
  fast = head.next
  while slow != fast
      if fast == nil || fast.next == nil
          return false
      end
      slow = slow.next
      fast = fast.next.next
  end
  return true
end