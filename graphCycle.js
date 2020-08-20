//Leetcode 207 - times out on submission in largest test
// could refactor to adjacency list and then implement DFS

/**
 * @param {number} numCourses
 * @param {number[][]} prerequisites
 * @return {boolean}
 */
var canFinish = function(numCourses, prerequisites) {
  //DFS tracking each call stack, cannot repeat nodes in a stack

  function depthFirst(v, prereqs, stack, visited) {
      visited.push(v)
      stack.push(v)
      let next = prereqs.filter(edge => edge[0] === v[1])

      let found = next.find(edge => {
          if (!visited.includes(edge)) {
              return depthFirst(edge, prereqs, stack, visited)
          } else if (stack.includes(edge)) {
              // found a cycle
              return true
          }
      })
      stack.pop()
      return !!found 
  }
  
  const checked = prerequisites.find(edge => {
      return depthFirst(edge, prerequisites, [], [])
  })

  return !checked
};