# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3' # to bridge between ruby and database
require 'faker' # lets you make fake names and ages

# create SQLite3 database
# sqlite3 somedatabase.db in terminal OR in ruby:
db = SQLite3::Database.new("kittens.db")
db.results_as_hash = true 
# to see results of database as a hash
# learn about fancy string delimiters
# just declaring a string, not running sql
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd) # this is passing in a string

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion
kittens = db.execute("SELECT * FROM kittens")
# puts kittens.class # Checks to see what type of data this is
# p kittens

def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age]) # ? is a placeholder value
end

10000.times do
  create_kitten(db, Faker::Name.name, 0)
end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

# to iterate through when it is a hash: 


