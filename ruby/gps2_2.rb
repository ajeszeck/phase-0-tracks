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

# Method to add an item to a list (def add_item)
# input: list (grocery_list), item name(item), and optional quantity(number)
# steps: 
  # grocery_list[item] += number 
  # if item doesn't already exist in the hash, add it
# output: grocery_list (hash)

# Method to remove an item from the list
# input: grocery_list (hash), item_to_remove
# steps:
  # check if item exists in hash
  # if it does, delete key/value pair of item
# output: (hash) grocery_list

# Method to update the quantity of an item
# input: grocery_list (has), item name, quantity
# steps:
  # update value of item in hash to given quantity
  # if item doesn't already exist in the hash, add it
# output: grocery_list (hash)

# Method to print a list and make it look pretty
# input: grocery_list (hash)
# steps: 
  # iterate through grocery_list and print out each key value pair in the hash
# output: 
  # example:
  # carrots: 1
  # apples: 2

# For use later:
# grocery_list.delete_if { |item, quantity| item == item_to_remove }