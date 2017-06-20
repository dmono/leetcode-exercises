# leetcode 153

def find_min(nums)
  left = 0
  right = nums.size - 1

  return nums[0] if nums[left] < nums[right]
  return nums[0] if right == 0

  while left < right do
    mid = left + (right - left) / 2
    if nums[mid] >= nums[left]
      left = mid + 1
    else
      right = mid
    end
  end

  nums[left]
end

# left = 0, right = 2, mid = 1

puts find_min([0, 1, 2, 3, 4, 5])
puts find_min([2, 3, 4, 5, 0, 1])
puts find_min([1, 2, 3, 4, 5, 0])
puts find_min([2, 1])
puts find_min([3,1,2])
puts find_min([3,4,5,1,2])

# [0, 1, 2, 3, 4, 5]
# [2, 3, 4, 5, 0, 1]
# [1, 2, 3, 4, 5, 0]