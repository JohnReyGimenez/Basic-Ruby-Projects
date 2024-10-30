def ceasar_cipher (string, shift) 
  string.each_char do |char|
  k = char.ord
  back = k + shift
  new = back.chr
  print new
  end
  return nil
end

puts ceasar_cipher("What a string!", 2)