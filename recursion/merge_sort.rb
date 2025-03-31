def merge_sort(array)
  sorted = []
  return array if array.length == 1

  mid = array.length / 2
  left_half = merge_sort(array.take(mid))   
  right_half = merge_sort(array.drop(mid))

  until left_half.empty? || right_half.empty?
    if left_half.first <= right_half.first
      sorted << left_half.shift
    else
      sorted << right_half.shift
    end
  end
end

merge_sort([3, 2, 1, 13, 8, 5, 0, 1])

# if only one element, quit
# else sort left of numbers
# sort right half of humbers
# merge sorted halves