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

def fibs_rec(n)
  puts 'This was printed recursively'
  return [0] if n == 0
  return [0, 1] if n == 1

  if n > 2
    until n > 2
    n - 1
    end

    next_value = fibs_rec(n - 1) + fibs_rec(n - 2)
    arr.push(next_value) 
  end
end

fibs(8)
fibs_rec(8)

# last index is n + 1
# make array that starts with [0, 1]
# each with index add 1st and second index
# add 1 in each index until last index
# [0, 1, 1, 2, 3, 5, 8, 13].