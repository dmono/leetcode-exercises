def find_peak_element(nums)
  left = 0
  right = nums.size - 1

  while left + 1 < right do
    mid = left + (right - left) / 2
    if nums[mid] > nums[mid + 1] && nums[mid] > nums[mid - 1]
      return mid
    end

    if nums[mid] < nums[mid + 1]
      left = mid + 1
    else
      right = mid - 1
    end    
  end

  if nums[left] >= nums[right]
    left
  else
    right
  end
end
