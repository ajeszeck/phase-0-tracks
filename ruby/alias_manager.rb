# Alias Maker
# First take the name and swap the first and last name
# Change all the vowels to the next vowel in 'aeiou'
# Change all the consonants to the next consonant in the alphabet that isn't a vowel

# THOUGHTS
# Make all letters lowercase
# Then swap the first and last by using split(' ')
# Then rejoin the two 
# Then split the name into individual letters in an array
# Write a method to handle vowel situations
# Write a method to handle consonant situations
# Store new name in a new array 'alias'

def alias_maker(name)
  new_name = switch_name(name)
  p new_name
end

def switch_name(name)
  name.downcase
  new_name = name.split(" ")
  first_name = new_name[0]
  last_name = new_name[1]
  new_name[0] = last_name
  new_name[1] = first_name
  return new_name

end

 alias_maker("Anna Jeszeck")

 
# def next_vowel

# end

# def next_consonant

# end