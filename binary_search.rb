def binary_search(array, num)
  lower_idx = 0
  upper_idx = array.length - 1

  while lower_idx <= upper_idx do
    middle_idx = (upper_idx + lower_idx) / 2
    arr_value = array[middle_idx]

    if num < arr_value
      upper_idx = middle_idx - 1
    elsif num > arr_value
      lower_idx = middle_idx + 1
    else
      return arr_value
    end
  end

  return nil
end

puts binary_search([1, 2, 10, 23, 36, 45, 52, 60, 72], 1)
puts binary_search([1, 2, 10, 23, 36, 45, 52, 60, 72], 60)
puts binary_search([1, 2, 10, 23, 36, 45, 52, 60, 72], 36)
puts binary_search([1, 2, 10, 23, 36, 45, 52, 60, 72], 100)
