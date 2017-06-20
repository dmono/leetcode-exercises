def remove_element(nums, val)
  left = 0
  right = nums.size - 1

  while left <= right
    if nums[left] == val
      nums[left], nums[right] = nums[right], nums[left]
      right -= 1
    else
      left += 1
    end
  end

  return left
end
