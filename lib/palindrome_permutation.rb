
def palindrome_permutation?(string)
  
  letter_hash = {}
  string.chars.map do |char|
    letter_hash["#{char}"] = string.count(char)
  end
  
  odd_count = 0
  letter_hash.each do |key, value|
    value.odd? ? (odd_count += 1) : next
  end
  
  odd_count > 1 ? (return false) : (return true) 

end

