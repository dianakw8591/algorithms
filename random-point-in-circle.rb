#LeetCode 478 - does not meet uniformity requirement
class Solution

  =begin
      :type radius: Float
      :type x_center: Float
      :type y_center: Float
  =end
      def initialize(radius, x_center, y_center)
          @radius = radius.to_f
          @x_center = x_center.to_f
          @y_center = y_center.to_f
      end
  
  
  =begin
      :rtype: Float[]
  =end
      def rand_point()
          #select a random x within the radius range
          x = rand(-@radius..@radius)
          #find the max y-value
          y_max = Math.sqrt(@radius*@radius - x*x)
          #select a random y-value within that range
          y = rand(-y_max..y_max)
          #offset x and y by the circle's center
          x = x + @x_center
          y = y + @y_center
          [x, y]
      end
  
  
  end
  
  # Your Solution object will be instantiated and called as such:
  # obj = Solution.new(radius, x_center, y_center)
  # param_1 = obj.rand_point()