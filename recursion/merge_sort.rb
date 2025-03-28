def merge_sort(array)
  if array.length == 1
    return array
  else
    mid = array.length / 2
    left_half = merge_sort(array.take(mid))   
    right_half = merge_sort(array.drop(mid)) 
    p array
  end

end

merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
# if only one element, quit
# else sort left of numbers
# sort right half of humbers
# merge sorted halves