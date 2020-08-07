//Leetcode 226 Invert binary tree

/**
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/**
 * @param {TreeNode} root
 * @return {TreeNode}
 */
var invertTree = function (root) {
  function flip(root) {
    if (root === null) {
      return
    } else {
      l = root.left
      root.left = root.right
      root.right = l
      flip(root.left)
      flip(root.right)
    }
  }
  if (root === null) {
    return root
  } else {
    flip(root)
  }
  return root
};