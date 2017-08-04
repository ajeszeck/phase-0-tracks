# Method to create a list (def create_list)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # store in input called 'groceries'
  # groceries.split(" ")
  # use a hash called 'grocery_list = Hash.new'  
  # set default quantity --> grocery_list.default(0)
  # groceries.each { |item| grocery_list[item] = 1 }
  # use a loop to iterate through each key/value pair of the hash 
# output: a hash of grocery list items

def create_list(list)
  groceries = list.split(" ")
  grocery_list = {}
  groceries.each do |item| 
    grocery_list[item] = 1
  end
  grocery_list
end

# Method to add an item to a list (def add_item)
# input: list (grocery_list), item name(item), and optional quantity(number)
# steps: 
  # grocery_list[item] += number 
  # if item doesn't already exist in the hash, add it
# output: grocery_list (hash)

def add_item(grocery_list, item, quantity=1)
  grocery_list[item] = quantity
  grocery_list
end

# Method to remove an item from the list
# input: grocery_list (hash), item_to_remove
# steps:
  # check if item exists in hash
  # if it does, delete key/value pair of item
# output: (hash) grocery_list

def remove_item(grocery_list, item)
  grocery_list.delete(item)
  grocery_list
end

# Method to update the quantity of an item
# input: grocery_list (has), item name, quantity
# steps:
  # update value of item in hash to given quantity
  # if item doesn't already exist in the hash, add it
# output: grocery_list (hash)

def update_item(grocery_list, item, quantity)
  grocery_list[item] = quantity
  grocery_list  
end 

# Method to print a list and make it look pretty
# input: grocery_list (hash)
# steps: 
  # iterate through grocery_list and print out each key value pair in the hash
# output: 
  # example:
  # carrots: 1
  # apples: 2

def print_list(grocery_list)
  grocery_list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

groceries = create_list("carrots apples cereal pizza")
p add_item(groceries, "pineapples")
p update_item(groceries, "pineapples", 2)
print_list(groceries)


# What did you learn about pseudocode from working on this challenge?
  # It is really important to be more general in your pseudocode. As a pair, we
  # really got specific early on in writing pseudocode, we basically began by writing 
  # code. It is smarter to go general first, and get specific later, it organizes thought
  # better.
# What are the tradeoffs of using arrays and hashes for this challenge?
  # Array would work for the list, but they are less explicit about quantities. You would
  # would need more methods in order to search for and count items. Hashes worked well 
  # because it was easy to read the content, easy to display it, and easy to update it.
# What does a method return?
  # A piece of data. Could be any data type.
# What kind of things can you pass into methods as arguments?
  # Any piece of data. Can be any data type. 
# How can you pass information between methods?
  # By using arguments and parameters. 
# What concepts were solidified in this challenge, and what concepts are still confusing?
  #  I think that the pseudocode aspect was much more clear after this exercise, but it appears
  # that I overthink a lot of the directions and try to overcomplicate the questions. I have to
  # step back and make sure what I am doing is what they are asking for.