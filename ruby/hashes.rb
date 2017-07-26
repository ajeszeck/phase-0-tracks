# the client's name, age, number of children, decor theme, and so on
# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key (no need to loop, once is fine). 
# After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# Print the latest version of the hash, and exit the program.

# Prompt the user for their answers/information
# and convert any answers into their correct data types
answers = {}

puts "I can't wait to start creating your dream home, but I need a couple pieces of information first.."
puts "What is your name?"
answers[:name] = gets.chomp
puts "How old are you?"
answers[:age] = gets.chomp.to_i
puts "How many children do you have?"
answers[:children] = gets.chomp.to_i
puts "What is your favorite decor style?"
answers[:decor_theme] = gets.chomp
puts "What is your favorite color?"
answers[:color] = gets.chomp

# Print full hash out once user has completed all questions
# Then print final hash
p answers

# Ask the user if they would like to update any values, then depending on answer, prompt for new answer
puts "Would you like to change any of your answers? If so, type 'name', 'age', 'children', 'decor_theme', 'color' or type 'none'."
edit_answer = gets.chomp
# Test to see if their response is equal to none, and if it is not, ask what they would like to change their response to.
if edit_answer == "none"
	puts answers
else 
	puts "What would you like to change your answer to?"
	answer_sym = edit_answer.to_sym
	answers[answer_sym] = gets.chomp
	puts answers
end




