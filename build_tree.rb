#Leetcode 105
#O(n) must go to each node

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
  if preorder.empty?
      return nil
  end
  root_val = preorder[0]
  l_length = inorder.index(root_val)
  root = TreeNode.new(root_val)
  root.left = build_tree(preorder[1..l_length], inorder[0...l_length])
  root.right = build_tree(preorder[l_length + 1..preorder.length], inorder[l_length + 1..inorder.length])
  root
end