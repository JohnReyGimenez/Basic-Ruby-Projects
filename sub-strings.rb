dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings (word, dictionary)
  word = word.downcase
  sentence = word.split
  hash = dictionary.map {|word| [word,0]}.to_h

   sentence.each do |word| 
    dictionary.each do |dict_word|
      if word.include?(dict_word)
        hash[dict_word] += 1
      end  
    end
  end
 hash = hash.select {|key, value| value > 0}
 puts hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)

# downcases the word
# if sentence turn into array
# make empty hash
# iterates the array and look for similar substrings 
# if similar return each subtring as the key and the value as
# how many times it was found
# increment the count for that word in the hash.
# Return the hash with counts.

