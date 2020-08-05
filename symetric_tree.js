//LeetCode 101
// did not solve in ruby because was unable to use a helper method that took two nodes

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
 * @return {boolean}
 */
var isSymmetric = function(root) {
  function compare(left, right) {
      if (left === null && right === null) {
         return true
      } else if (left === null || right === null || left.val !== right.val) {
         return false
      } else {
         return compare(left.left, right.right) && compare(left.right, right.left)
      }
  }
  return compare(root,root)
};