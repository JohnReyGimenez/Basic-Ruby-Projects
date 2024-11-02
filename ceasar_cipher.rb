def ceasar_cipher (string, shift) 
  alphabet = ('a'..'z').to_a 
  string = string.downcase

  shifted_string = string.chars.map do |chr| 
    if alphabet.include?(chr)
    new_index = (alphabet.index(chr) + shift) % alphabet.size
    alphabet[new_index]
    else
      chr
    end
  end
  shifted_string.join
end

puts ceasar_cipher("What a string!", 2)

# create an array from a to z
# create another array derived from first array which is switched to their indexes 
# the method then takes the input(set of strings) and turns each letter 
# to its corresponding index based on the array 
# the shift is then added to each characters(index) number 
# its then converted back into the string based on the first array
