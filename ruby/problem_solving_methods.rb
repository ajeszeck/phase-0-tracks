# Method to search an array for a number and return its index

# Look at each index of an array 
# Compare argument to current index spot in array and return index number if a match
# Else continue through array until reaching end
# If no match, return nil

# Release 0


sample_array = [0, 3, 5, 6, 8]


def search_array(array, y)
  index = 0
  array.each { |x|
    if x == y
      return index
    else
      index += 1
    end
  } 
  return nil
end

p search_array(sample_array, 3)
p search_array(sample_array, 6)
p search_array(sample_array, 2)

# Release 1

# Start with array of 0, 1
# Store the first two indexes in an x and a y variable
# Add those two and push the result to the array
# Increment x any y by 1 
# Continue incrementing until you reach the argument - 1 times


def fib(number_length)
  fib_numbers = [0, 1]
  x = 0
  y = 1
  index = 0
  while index < number_length - 2 
    sum = fib_numbers[x] + fib_numbers[y]
    fib_numbers.push(sum)
    x += 1
    y += 1
    index += 1
  end
  fib_numbers
end

p fib(5)
p fib(100)

if fib(100)[-1] == 218922995834555169026
  p true
end

# p fib(100) = 218922995834555169026

# Release 2

# Write a method that takes two indices in an array and swaps them

def swap(array, x, y)
  temp_1 = array[x]
  temp_2 = array[y]
  array[y] = temp_1
  array[x] = temp_2
  return array
end

p swap([1, 2, 3], 0, 1)


def bubble_sort(array)
  swapped = true
  while swapped == true
    swapped = false
    index = 0
    while index < array.length - 1
      if array[index] > array[index + 1]
        swap(array, index, index + 1)
        swapped = true
      end
      index += 1
    end
  end
  return array
end

p bubble_sort([1, 3, 2, 7, 4])
p bubble_sort([30, 2, 1, 5, 8, 19])























