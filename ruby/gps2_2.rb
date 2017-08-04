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