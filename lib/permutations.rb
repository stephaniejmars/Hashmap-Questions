
def permutations?(string1, string2)
  return false if string1.length != string2.length

  string1.chars.each do |char|
    if string2.include?(char)
      string1.slice!(char)
      string2.slice!(char)
    end
  end
  
  return true if string1.empty? && string2.empty?
  return false  
end