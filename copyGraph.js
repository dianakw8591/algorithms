//Leetcode 133

/**
 * // Definition for a Node.
 * function Node(val, neighbors) {
 *    this.val = val === undefined ? 0 : val;
 *    this.neighbors = neighbors === undefined ? [] : neighbors;
 * };
 */

/**
 * @param {Node} node
 * @return {Node}
 */
var cloneGraph = function(node) {
  if (!node) {
      return null
  }
  let visited = [node]
  let explored = []
  let newNodes = [new Node(node.val)]
  while (visited.length > 0) {
      let current = visited.shift()
      let newNode = newNodes.find(n => n.val === current.val) 
      if (!newNode) {
          newNode = new Node(current.val)
      }
      newNodes.push(newNode)
      
      current.neighbors.forEach(neighbor => {
          let newNeighbor = newNodes.find(n => n.val === neighbor.val)
          if (!newNeighbor) {
              newNeighbor = new Node(neighbor.val)
              newNodes.push(newNeighbor)
          } 
          newNode.neighbors.push(newNeighbor)

          if (!explored.includes(neighbor) && !visited.includes(neighbor)) {
             visited.push(neighbor) 
          }
      })
      explored.push(current)
  }
  return newNodes[0]

};