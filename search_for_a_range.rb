# T: O(log N), S: O(1)
# space is storing extra values, creating more space in memory

def search_range(nums, target)
  first_left = find_first_left(nums, target)
  first_right = find_first_right(nums, target)
  [first_left, first_right]
end

def find_first_left(nums, target)
  left = 0
  right = nums.size - 1
  
  while left + 1 < right do
    mid = left + (right - left) / 2
    if nums[mid] >= target
      right = mid
    else
      left = mid
    end
  end
  
  if nums[left] == target
    left
  elsif nums[right] == target
    right
  else
    -1
  end
end

def find_first_right(nums, target)
  left = 0
  right = nums.size - 1
  
  while left + 1 < right do
    mid = left + (right - left) / 2
    if nums[mid] <= target
      left = mid
    else
      right = mid
    end
  end
  
  if nums[right] == target
    right
  elsif nums[left] == target
    left
  else
    -1
  end
end
