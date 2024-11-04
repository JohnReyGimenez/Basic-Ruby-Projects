def stock_picker(array)
  array.each do 
    highest = array.max
    print highest
  
  end
end
stock_picker([17,3,6,9,15,8,6,1,10])


# iterate over the array and find the highest value
# in each element find the highest value after it
# subtract the value of the element and the highest valued element after it
# return a hash with its key as an array of the indexes of the elements
# and its value as both elements values being subtracted
# merge all hashes together into one hash and then find the highest
# value and return it 