# 1
arr = [1, 3, 5, 7, 9, 11]
number = 3
if arr.include?(number)
  puts "#{number} is in the array."
end

# 2
# 1)
arr = ["b", "a"]
arr = arr.product(Array(1..3))
# arr = [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
arr.first.delete(arr.first.last)
# Will return 1
# Will return [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

# 2)
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
# arr = [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
arr.first.delete(arr.first.last)
# Will return [1, 2, 3]
# arr = [["b"], ["a", [1, 2, 3]]]

# 3
# arr.last.first

# 4
arr = [15, 7, 18, 5, 12, 8, 5, 1]
# 1) Ruby will provide the index number for the first value that matches the argument. In this case, the return value will be 3.
# 2) can't use square brackets when using the index method, so an Error occurs.
# 3) Using the square brackets on the array itelf will return the value at index positio 5, which is 8.

# 5
# a = "e"
# b = "A"
# c = nil

# 6
# Arrays are indexed with integers and this code is attempting to reference an index positio with a string.
# To fix this, change line 2 to names[3] = 'jody'

# 7
arr = ["lion", "baby lion", "domestic cat", "kitten"]
arr.each_with_index{ |val, idx| puts "#{idx + 1}. #{val}"}

# 8
array = [2, 5, 9, 14, 20]
p new_array = array.map { |n| n + 2 }
p array
p new_array