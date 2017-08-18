# Going to make an address book database. It will start off with 30 Random Entries using faker
# There will be a user interaction section where a user can search for a specific entry 
# by typing the first letter of their name and getting a list back of all entries 
# that start with that letter. Then you can pick that person and specify if you want 
# address or phone number.
# Hopefully I can also implement an option to add your own entry to the database...

require 'sqlite3'
require 'Faker'

book = SQLite3::Database.new("address_book.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS address_book(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    phone_number INT
  )
SQL

