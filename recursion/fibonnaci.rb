def fibs(n)
  arr = [0, 1]
  if n < 2
    return arr
  else
    last_index = n + 1
    arr.each do |i|
      first_index = 0
      second_index = 1

      next_value = arr[first_index] + arr[second_index]
      arr.push(next_value)
      
      until n + 1
        first_index + 1
        second_index + 1
        next_value = arr[first_index] + arr[second_index]
        arr.push(next_value)
        return arr
      end
    end
    p arr
  end
end

fibs(8)

# last index is n + 1
# make array that starts with [0, 1]
# each with index add 1st and second index
# add 1 in each index until last index
# [0, 1, 1, 2, 3, 5, 8, 13].