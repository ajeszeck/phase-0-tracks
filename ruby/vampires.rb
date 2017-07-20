insurance = ''
year_of_birth = ''
age = ''
age_calc = 0
age_true = false
age_false = false
insurance_yes = false
insurance_no = false
like_garlic = false
hate_garlic = false

puts "What is your name?"
employee_name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i
puts age

puts "What year were you born?"
year_of_birth = gets.chomp.to_i
puts year_of_birth

age_calc = 2017 - year_of_birth
puts age_calc

if age == age_calc
	age_true = true
else 
	age_false = true
end
puts age_true
puts age_false

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
like_garlic = gets.chomp
puts like_garlic
if like_garlic == "y"
	like_garlic = true
else
	hate_garlic = true
end
puts like_garlic
puts hate_garlic

puts "Would you like to enroll in the company’s health insurance? (y/n)"
insurance = gets.chomp
puts insurance

if insurance == "y"
	insurance_yes = true
else insurance == "n"
	insurance_no = true
end

if age_true && (like_garlic || insurance_yes)
	puts "Probably not a vampire."
elsif age_false && (hate_garlic || insurance_no)
	puts "Probably a vampire."
elsif age_false && hate_garlic && insurance_no
	puts "Almost certainly a vampire."
end

