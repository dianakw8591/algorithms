# leetcode 417 - 112/113 test cases passed but final test case exceeds leet codes limit

# @param {Integer[][]} matrix
# @return {Integer[][]}
def pacific_atlantic(matrix)
  if matrix.empty?
      return []
  end
  m = matrix.length
  n = matrix[0].length
  
  currentP = []
  currentA = []
  exploredP = []
  exploredA = []

  for i in 0...n 
      currentP.push([0, i])
      currentA.push([m-1, i])
  end
  for i in 0...m 
      currentP.push([i, 0])
      currentA.push([i, n-1])
  end
  
  currentP.uniq!
  currentA.uniq!
  
  bfs(currentP, exploredP, matrix)
  bfs(currentA, exploredA, matrix)
  
 exploredP.select {|coord| exploredA.include?(coord) }
  
end

def bfs(current_array, explored_array, matrix)
  m = matrix.length
  n = matrix[0].length
  while !current_array.empty? do
    current = current_array.shift
    row = current[0]
    col = current[1]
    to_check = []
    
    if row > 0
        above = row - 1
        to_check.push([above,col])   
    end
    if row < m-1
        below = row + 1
        to_check.push([below,col])  
    end
    if col > 0
        left = col - 1
        to_check.push([row,left])  
    end
    if col < n-1
        right = col + 1
        to_check.push([row,right])  
    end
  
    to_check.each do |coord| 
        if matrix[coord[0]][coord[1]] >= matrix[row][col] && !explored_array.include?(coord) && !current_array.include?(coord)
        current_array.push(coord)  
        end
    end

    explored_array.push(current)
  end
end


# matrix = [[1,2,2,3,5],[3,2,3,4,4],[2,4,5,3,1],[6,7,1,4,5],[5,1,1,2,4]]
# puts pacific_atlantic(matrix)