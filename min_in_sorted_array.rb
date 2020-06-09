# LeetCode 153
# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  if nums.length == 1 || nums[0] < nums[nums.length - 1]
      return nums[0]
  elsif nums.length == 2
      return nums[0] < nums[1] ? nums[0] : nums[1]
  elsif nums[0] < nums[nums.length/2]
      find_min(nums[(nums.length/2 + 1)..(nums.length - 1)])
  else
      find_min(nums[0..nums.length/2])
  end       
end