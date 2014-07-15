def anagrams?(a_string, another_string)
  tab_a_string = a_string.downcase.scan(/\w/).sort
  tab_another_string = another_string.downcase.scan(/\w/).sort
  if tab_a_string == tab_another_string
    return true
  else
    return false
  end
end

def anagrams_on_steroids?(a_string, another_string)

  hash= {}
  hash2={}
  tab_a_string = a_string.downcase.scan(/\w/).sort
  tab_another_string = another_string.downcase.scan(/\w/).sort

  tab_a_string.each{|letter| hash[letter]= tab_a_string.count(letter)}
  tab_another_string.each {|letter| hash2[letter] = tab_another_string.count(letter)}

  hash==hash2



end
