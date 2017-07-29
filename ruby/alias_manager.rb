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

# Method to make all letters lowercase, then split and switch the first and last names
def switch_name(name)
  down_name = name.downcase
  new_name = down_name.split(" ")
  first_name = new_name[0]
  last_name = new_name[1]
  new_name[0] = last_name
  new_name[1] = first_name
  return new_name
end
# Method to handle vowel situations
def next_vowel(vowel)
  temp_vowel = vowel
  vowel_index = ["a", "e", "i", "o", "u"]
  current_index = vowel_index.index(vowel)
  temp_vowel = vowel_index[current_index + 1]
  if temp_vowel == nil
    temp_vowel = "a"
  end
  return temp_vowel
end
# Method to handle consonant situations
def next_consonant(consonant)
  temp_consonant = consonant
  consonant_index = ["b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  current_index = consonant_index.index(consonant)
  temp_consonant = consonant_index[current_index + 1]
  if temp_consonant == nil
    temp_consonant = "b"
  end
  return temp_consonant
end
# Method to capitalize the first letters of the name
def capitalize(name)
  temp_name = name.split(' ')
  first_name = temp_name[0]
  last_name = temp_name[1]
  first_name.capitalize!
  if last_name == nil
    last_name = nil
  else
    last_name.capitalize!
  end
  final_name = []
  final_name.push(first_name, last_name)
  real_final_name = final_name.join(' ')
  return real_final_name
end

def alias_maker(name)
  switched_name = switch_name(name)
  new_name = switched_name.join(' ')
  new_name = new_name.split('')
  index = 0
  temp_alias = []
  while index < new_name.length
    vowel_index = ["a", "e", "i", "o", "u"]
    current_letter = new_name[index]
    if new_name[index] == ' '
      temp_alias.push(" ")
      index += 1
    elsif vowel_index.include?(current_letter)
      new_letter = next_vowel(current_letter)
      temp_alias.push(new_letter)
      index += 1
    else 
      new_letter = next_consonant(current_letter)
      temp_alias.push(new_letter)
      index += 1
    end 
  end
  final_alias = capitalize(temp_alias.join)
  return final_alias
end

names = {
  real_names: [],
  aliased_names: []
}

puts "Enter your name to get your new alias."
original_name = gets.chomp
names[:real_names] << original_name
p alias_maker(original_name)
names[:aliased_names] << alias_maker(original_name)
end_generator = false
next_name = ""
until next_name == 'quit'
  puts "Here is your new alias. Would you like another? Type 'quit' to stop generating aliases."
  next_name = gets.chomp
  names[:real_names] << next_name
  unless next_name == 'quit'
    p alias_maker(next_name)
    names[:aliased_names] << alias_maker(next_name)
  end
end
puts "In summary:"
  index = 0 
  while index < names[:real_names].length - 1
    puts "-- " + names[:real_names][index] + " is also known as " + names[:aliased_names][index]
    index += 1
  end
  puts "Thank you for using our alias generator."


















