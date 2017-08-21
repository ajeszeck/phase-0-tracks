# Going to make an address book database. It will start off with 30 Random Entries using faker
# There will be a user interaction section where a user can search for a specific entry 
# by typing the first letter of their name and getting a list back of all entries 
# that start with that letter. Then you can pick that person and specify if you want 
# address or phone number.
# Hopefully I can also implement an option to add your own entry to the database...

require 'sqlite3'
require 'Faker'
require 'titleize'

db = SQLite3::Database.new("address_book.db")
db.results_as_hash = true 

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS address_book(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    phone_number INT
  )
SQL

db.execute(create_table_cmd)

def create_address(address_book, name, address, phone_number) # CREATES RANDOM CONTACT USING FAKER
  address_book.execute("INSERT INTO address_book (name, address, phone_number) VALUES (?, ?, ?)", [name, address, phone_number])
  puts name
  puts address
  puts phone_number
end

def look_up_contact(address_book, first_letter)
  results = []
  book = address_book.execute("SELECT * FROM address_book")
  book.each do |contact|
    name = contact["name"].split("")
    if name[0].downcase == first_letter
      results.push(contact["name"])
    end
  end
  puts "NAMES STARTING WITH '#{first_letter.upcase}':"
  if results.length == 0
    puts " -- No names in your address book start with '#{first_letter.upcase}'."
  else 
    results.each do |name|
      puts "-- #{name}"
    end
    to_exit = true
  end
end

def view_contact(address_book, name)
  result = address_book.execute("SELECT * FROM address_book WHERE name=?", [name.titleize])
  if result.length == 0 
    puts "COULD NOT FIND CONTACT INFORMATION FOR '#{name.titleize}'"
  else 
    result.each do |contact|
      puts "#{contact['name'].upcase}:"
      puts " -- Address: #{contact['address']}"
      puts " -- Phone Number: #{contact['phone_number']}"
    end
  end
end

def add_contact(address_book, name, address, phone_number)
  address_book.execute("INSERT INTO address_book (name, address, phone_number) VALUES (?, ?, ?)", [name, address, phone_number])
  to_exit = true
end

def update_contact(address_book, name, choice, updated_value)
  p choice
  address_book.execute("UPDATE address_book SET #{choice}=? WHERE name=?", [updated_value, name.titleize])
  view_contact(address_book, name)
end

def remove_contact(address_book, name)
  result = address_book.execute("DELETE FROM address_book WHERE name='#{name.titleize}'")
  puts "REMAINING CONTACTS"
  view_all_contacts(address_book)
end


def view_all_contacts(address_book)
  book = address_book.execute("SELECT * FROM address_book")
  book.each do |contact|
    puts "NAME: #{contact['name']},"
    puts "ADDRESS: #{contact['address']}"
    puts "PHONE #: #{contact['phone_number']}"
    puts "---------------"
  end
end

# address = "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.state}, #{Faker::Address.zip_code}"
# create_address(db, Faker::Name.name, address, Faker::Number.number(10))

# 5.times do
#   address = "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.zip_code}"
#   create_address(db, Faker::Name.name, address, Faker::Number.number(10))
# end

# book = db.execute("SELECT * FROM address_book")
# p book.class
# p book

# --- DRIVER CODE ----- 
to_exit = false

until to_exit
  puts "---------------------------"
  puts "WHAT WOULD YOU LIKE TO DO?"
  puts "1. FIND A CONTACT NAME"
  puts "2. VIEW CONTACT INFO"
  puts "3. ADD A CONTACT"
  puts "4. UPDATE A CONTACT"
  puts "5. REMOVE A CONTACT"
  puts "6. VIEW ALL CONTACTS"
  puts "7. EXIT"
  puts "---------------------------"
  answer = gets.chomp

  case answer

  when "1" # LOOK UP A CONTACT NAME
    puts "ENTER FIRST LETTER OF NAME"
    first_letter = gets.chomp
    look_up_contact(db, first_letter.downcase)
  when "2" # VIEW CONTACT INFO
    puts "NAME?"
    name = gets.chomp
    view_contact(db, name)
    to_exit = true
  when "3" # ADD A CONTACT
    puts "NAME?"
    name = gets.chomp
    puts "ADDRESS?"
    address = gets.chomp
    puts "PHONE NUMBER?"
    phone_number = gets.chomp
    add_contact(db, name, address, phone_number)
  when "4" # UPDATE A CONTACT
    puts "CONTACT NAME TO UPDATE?"
    name = gets.chomp
    puts "UPDATE WHICH:"
    puts "  1. ADDRESS"
    puts "  2. PHONE NUMBER"
    puts "PLEASE SELECT 1 OR 2."
    choice = gets.chomp
    if choice == '1'
      puts "NEW ADDRESS?"
      new_address = gets.chomp
      update_contact(db, name, 'address', new_address)
    elsif choice == '2' 
      puts "NEW PHONE NUMBER?"
      new_number = gets.chomp
      update_contact(db, name, 'phone_number', new_number)
    else
      puts "INVALID SELECTION"
    end
  when "5" # REMOVE A CONTACT
    puts "NAME TO REMOVE?"
    name = gets.chomp
    remove_contact(db, name)
  when "6" # VIEW ALL CONTACTS
    view_all_contacts(db)
  when "7" # EXIT
    to_exit = true
  else 
   puts "INVALID SELECTION"
  end
end

# Good idea to use a number list to ask user what action they would like to achieve, maybe simpler?
# THI
# 1. Search for Name
# 2. Look up address using name
# 3. Look up phone number using name
# 4. Add a contact
# 5. Change the value of an existing contact's address or phone number





