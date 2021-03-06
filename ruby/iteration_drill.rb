# Array Drills #########################

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array using #each,
# printing each item in the array separated by an asterisk
# ----
zombie_apocalypse_supplies.each { |x| puts x + "," } 


# 2. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies using #each.
# For instance: are boots in your list of supplies?
# ----

def search(array, item)
  if array.index(item) != nil
    puts item + " is in your list of supplies."
  else 
    puts item + " is not in your list of supplies."
  end
end

search(zombie_apocalypse_supplies, "hatchet")
search(zombie_apocalypse_supplies, "boots")


# 3. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5, using #each.
# ----

# IDEA:until zombie_apocolypse_supplies.length == 5, remove item, will probably remove the first ones.

def only_five(array)
  array.each { |x|
    if array.length > 5
      array.delete(array[-1])
    end
  }
  return array
end

p only_five(zombie_apocalypse_supplies)

# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
def combine(array_one, array_two)
  array_one.push(array_two)
  array_one.flatten!
  array_one.uniq!
  return array_one
end

p combine(zombie_apocalypse_supplies, other_survivor_supplies)

# Hash Drills ###############################

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each { |key, value| puts "#{key}-#{value} * "}

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.
# ----

extinct_animals.each { |key, value| 
    if value > 2000
      extinct_animals.delete(key)
    end
  }
p extinct_animals

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went extinct.
# ----


extinct_animals.each { |key, value| 
  extinct_animals[key] = value + 3
}

p extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, "Andean Cat")
# ----

def is_extinct?(hash_list, animal)
  extinct = false
  hash_list.each { |key| 
    if hash_list.has_key?(animal)
      extinct = true
    else
      extinct = false
    end
  }
  if extinct == true
    puts "Unfortunately, #{animal} is extinct."
  else 
    puts "Good news! #{animal} is not extinct!"
  end
end

is_extinct?(extinct_animals, "Andean Cat")
is_extinct?(extinct_animals, "Dodo")
is_extinct?(extinct_animals, "Saiga Antelope")


# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build
# your own method using #each
# ----

final_list = extinct_animals.select { |key, value|
  key == "Passenger Pigeon"
}
p final_list_array = final_list.to_a
p final_list_array.flatten






