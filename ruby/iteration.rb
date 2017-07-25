# ###### NOTES ON CODE ALONG

# # keys are 1, 2, 3  values are one, two, three
# numbers = {1 => 'one', 2 => 'two', 3 => 'three'}

# numbers.each do |digit, word|
# 	puts "#{digit} is spelles out as #{word}"
# end

# iterate through the array with .map
# exclamation on map is dangerous to edit in place
# if you don't use the bang operator you can save the result to a new array

# modified_letters = letters.map do |letter| 
# 	puts letter
# 	letter.next # last line or expression of your block evaluates 
# 							# to what the new value of the item should be
# end

# puts "After .map call:"
# p letters
# p modified_letters

# RELEASE 1

vegetables = ["carrot", "pea", "asparagus", "lettuce"]

phones = {
	apple: "iPhone",
	samsung: "Galaxy",
	motorola: "Droid",
	microsoft: "Windows Phone"
}

p vegetables
p phones

vegetables.each do |vegetable|
	puts vegetable
end

vegetables.each { |vegetable| puts vegetable }

phones.each { |company, type| puts "#{company} makes the #{type}" }

vegetables.map! do |vegetable|
	vegetable.reverse
end

p vegetables

# RELEASE 2

numbers_hash = {
	1 => 'one',
	2 => 'two',
	3 => 'three',
	4 => 'four'
}

# 1.
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
p numbers 
numbers.delete_if {|number| number % 2 == 0 }
p numbers

numbers_hash.delete_if {|digit, word| digit > 3 }
p numbers_hash

# 2. 
numbers_2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
p numbers_2
new_numbers = numbers_2.select { |number| number.odd? }
p new_numbers

numbers_hash_2 = {
	1 => 'one',
	2 => 'two',
	3 => 'three',
	4 => 'four'
}
new_numbers_hash = numbers_hash_2.select { |digit, word| word.length <=3 }
p new_numbers_hash

# 3 & 4.
p numbers_2			
numbers_4 = numbers_2.drop_while { |i| i < 5 }
p numbers_4

numbers_hash_3 = {
	1 => 'one',
	2 => 'two',
	3 => 'three',
	4 => 'four'
}

numbers_hash_3.keep_if { |digit, word| digit.odd? }
p numbers_hash_3





