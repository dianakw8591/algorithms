#Leetcode 297
#O(n) - must traverse all values of the tree

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# Encodes a tree to a single string.
#
# @param {TreeNode} root
# @return {string}
def serialize(root)
  if root.nil?
      return ''
  end
  queue = [root]
  array = []
  while queue.any?  {|node| !node.nil? } do
      current = queue.shift
      if current.nil? 
          array << 'null'
      else
          array << current.val
          queue << current.left
          queue << current.right
      end
  end
  array.join(',')
end

# Decodes your encoded data to tree.
#
# @param {string} data
# @return {TreeNode}
def deserialize(data)
  if data == ''
      return TreeNode.new('')
  end
  array = data.split(',')
  root = TreeNode.new(array.shift)
  queue = [root]
  while !array.empty? do
      current = queue.shift
      if current != 'null'
          current.left = TreeNode.new(array.shift)
          queue << current.left
          if !array.empty?
              current.right = TreeNode.new(array.shift)
              queue << current.right
          end
      else
          queue << array.shift
          queue << array.shift
      end
  end
  root
end


# Your functions will be called as such:
# deserialize(serialize(data))