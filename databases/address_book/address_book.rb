# Going to make an address book database. It will start off with 30 Random Entries using faker
# There will be a user interaction section where a user can search for a specific entry 
# by typing the first letter of their name and getting a list back of all entries 
# that start with that letter. Then you can pick that person and specify if you want 
# address or phone number.
# Hopefully I can also implement an option to add your own entry to the database...

require 'sqlite3'
require 'Faker'

db = SQLite3::Database.new("address_book.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS address_book(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    phone_number INT
  )
SQL

db.execute(create_table_cmd)

def create_address(address_book, name, address, phone_number)
  address_book.execute("INSERT INTO address_book (name, address, phone_number) VALUES (?, ?, ?)", [name, address, phone_number])
  puts name
  puts address
  puts phone_number
end

def add_contact(address_book, name, address, phone_number)
  address_book.execute("INSERT INTO address_book (name, address, phone_number) VALUES (?, ?, ?)", [name, address, phone_number])
end

address = "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.state}, #{Faker::Address.zip_code}"
# create_address(db, Faker::Name.name, address, Faker::Number.number(10))

# 15.times do
#   address = "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.zip_code}"
#   create_address(book, Faker::Name.name, address, Faker::Number.number(10))
# end

# --- DRIVER CODE ----- 
to_exit = false

puts "WOULD YOU LIKE TO ACCESS A CONTACT?"
answer = gets.chomp
if answer == "yes" || answer == "YES"
  until to_exit
    puts "ADD A CONTACT or FIND A CONTACT?"
    action = gets.chomp
    if action == "add a contact" || action == "ADD A CONTACT"
      puts "NAME? "
      name = gets.chomp
      puts "ADDRESS?"
      address = gets.chomp
      puts "PHONE NUMBER?"
      phone_number = gets.chomp
      add_contact(db, name, address, phone_number)

    elsif action == "find a contact" || action == "FIND A CONTACT"

    else 
      puts "Would you like to try again? To exit type 'exit'."
      again = gets.chomp
      if again == "exit"
        to_exit = true
      end
    end
  end
elsif answer == "no" || answer == "NO"
  puts "Have a nice day."
else 
  puts "Invalid answer. Please enter yes or no."
end

# error in loop, automatically asks to add contact  or find a contact immediately after adding contact








