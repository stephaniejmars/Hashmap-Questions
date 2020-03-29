
def palindrome_permutation?(string)
  singles = []
  string.chars.each do |char|
    if string.count(char).odd?
      singles << char
      string.slice!(char)
    end 
  end

  return false if singles.length > 1
  return true
end
