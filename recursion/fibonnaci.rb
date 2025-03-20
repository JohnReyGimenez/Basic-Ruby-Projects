def fibs(n)
  return [0] if n == 0
  return [0, 1] if n == 1

  arr = [0, 1]
     
  until arr.length == n + 1
    next_value = arr[-1] + arr[-2] # accesses the last 2 indices and adds its values
    arr.push(next_value)   
  end
  
  p arr 
  arr 
end

def fibs_rec(n, arr = nil)
  arr ||= [0, 1]  # Initialize array only on the first call

  puts 'This was printed recursively'

  return (p arr[0, n + 1]) if arr.length > n   # Base case: Stop when enough numbers are generated

  arr << arr[-1] + arr[-2]  # Add the next Fibonacci number

  fibs_rec(n, arr)  # Recursive call with the updated array
end

fibs(8)
fibs_rec(8)

# last index is n + 1
# make array that starts with [0, 1]
# each with index add 1st and second index
# add 1 in each index until last index
# [0, 1, 1, 2, 3, 5, 8, 13].