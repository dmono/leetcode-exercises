def bubble_sort(array)

  loop do
    sorted = true

    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end

    break if sorted
  end

  array
end

p bubble_sort([4, 100, 23, 39, 45, 13, 1])
