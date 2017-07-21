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

puts "How many candidates are there?"
candidate_number = gets.chomp
index = 0

while index < candidate_number.to_i

	puts "What is your name?"
	employee_name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	year_of_birth = gets.chomp.to_i
	age_calc = 2017 - year_of_birth

	if age == age_calc
		age_true = true
	else 
		age_false = true
	end

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic_answer = gets.chomp

	if garlic_answer == "y"
		like_garlic = true
	elsif garlic_answer == "n"
		hate_garlic = true
	else 
		puts "error."
	end

	puts "Would you like to enroll in the company’s health insurance? (y/n)"
	insurance = gets.chomp

	if insurance == "y"
		insurance_yes = true
	elsif insurance == "n"
		insurance_no = true
	end

	if employee_name == "Drake Cula" || employee_name == "Tu Fang"
		puts "Definitely a vampire."
	elsif age_false && hate_garlic && insurance_no
		puts "Almost certainly a vampire."
	elsif age_false && (hate_garlic || insurance_no)
		puts "Probably a vampire."
	elsif age_true && (like_garlic || insurance_yes)
		puts "Probably not a vampire."
	else
		puts "Results inconclusive."
	end

	index += 1
end
