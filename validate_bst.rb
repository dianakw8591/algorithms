# leetcode 98

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_valid_bst(root, leftbound=nil, rightbound=nil)
  if root.nil?
      return true
  end
  
  if leftbound && root.val <= leftbound
      return false
  end
  
  if rightbound && root.val >= rightbound
      return false
  end
  
  return is_valid_bst(root.left, leftbound, root.val) && is_valid_bst(root.right, root.val, rightbound)
  return true
end