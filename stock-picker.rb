def stock_picker(array)
  hash = {}
  array.each_with_index do |price, index|

    sub_array = array[index + 1..-1]
    highest = sub_array.max  #find the highest value after the index
    
    if highest
      highest_index = array.index(highest) #get the index of highest value
      hash[[index, highest_index]] =  highest - price
    end
  end
  best_days = hash.max_by{|k,v| v}
  print best_days
end
stock_picker([17,3,6,9,15,8,6,1,10])


# iterate over the array and find the highest value
# in each element find the highest value after it
# subtract the value of the element and the highest valued element after it
# return a hash with its key as an array of the indexes of the elements
# and its value as both elements values being subtracted
# merge all hashes together into one hash and then find the highest
# value and return it 