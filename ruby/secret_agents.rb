# ask user for input for password
# use while loop to loop through letters of password
# use .next to advance all letters of password one letter

# puts "what is your password"
# password = gets.chomp

# example = "abc"

def encrypt(sample)
  index = 0
  password = sample
  while index < password.length
    unless password[index] == " "
      if password[index] == "z"
        password[index] = "a"
      else
        password[index] = password[index].next!
      end
    end
    index += 1
  end
  return password
end

# p password

#use changed password variable 
# use while loop to loop through letters of password 
# make a variable string for entire alphabet
# for each letter of password compare index to alphabet location


def decrypt(sample)
  index = 0 
  password = sample
  while index < password.length
    unless password[index] == " "
      current_letter = password[index]
      alphabet_index = "abcdefghijklmnopqrstuvwxyz".index(password[index])
      password[index] = "abcdefghijklmnopqrstuvwxyz"[alphabet_index - 1]
    end
    index +=1
  end
  return password
end

#p password

#puts encrypt("abc") 
#puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")
#decrypt(encrypt("swordfish"))

# made password encrypted then decrypted it again

puts "Would you like your password to be encrypted or decrypted?"
preference = gets.chomp

puts "What is the password?"
user_password = gets.chomp

if preference == "encrypted"
  result = encrypt(user_password)
  puts "here is your encrypted password: #{result}"
elsif preference == "decrypted"
  result2 = decrypt(user_password)
  puts "here is your decrypted password: #{result2}"
else 
  puts "I'm sorry I didn't understand you"
end
 