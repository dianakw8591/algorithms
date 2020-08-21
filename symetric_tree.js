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

//Recursive solution
const isSymmetric = root => {
  function compare(left, right) {
    if (left === null && right === null) {
      return true
    } else if (left === null || right === null || left.val !== right.val) {
      return false
    } else {
      return compare(left.left, right.right) && compare(left.right, right.left)
    }
  }
  if (root === null) {
    return true
  }
  return compare(root.left, root.right)
};


//Iterative solution
const isSymmetric = root => {
  if (root === null) {
    return true
  }
  let queue = []
  queue.push(root.left, root.right)

  while (queue.length > 0) {
    let left = queue.shift()
    let right = queue.shift()
    if (left === null && right === null) {
      continue
    } else if (left === null || right === null || left.val !== right.val) {
      return false
    } else {
      queue.push(left.left, right.right, left.right, right.left)
    }
  }
  return true
}