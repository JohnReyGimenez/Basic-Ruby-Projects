def bubble_sort(array)
  loop do
    swapped = false
    array.each_with_index do |element,index|
      break if index == array.length - 1
    if array[index] > array[index + 1]
      array[index], array[index + 1] = array[index + 1], array[index] #swap elements
      swapped = true
    end
  end
  break unless swapped
  end
  print array
end

bubble_sort([4,3,78,2,0,2])


# iterate over the array
# if the first element is greater than the second elements
# switch values else go over the next values with the same logic
# go over the elements again until one everything is skipped over