puts "Name?"
name = gets.chomp
puts "Volume level from 1 to 10?"
volume = gets.chomp.to_i
p volume
puts "Fur color?"
fur_color = gets.chomp
puts "Good candidate for adoption? (y/n)"
good_candidate = gets.chomp

if good_candidate == "y"
	good_candidate = true
else good_candidate
	good_candidate = false
end
p good_candidate
puts "Estimated age?"
age = gets.chomp

if age == ""
	age = nil
else
	age = age.to_i
end



