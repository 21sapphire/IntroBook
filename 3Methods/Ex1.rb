# 1
def greeting(name)
  return "Hello, " + name + ". Welcome to Ruby."
end

puts greeting("Matt")

# 2
x = 2 # => 2.

puts x = 2 # => nil

p name = "Joe" # => "Joe"

four = "four" # => "four"

print something = "nothing" # => nil

# 3
puts " "  # I added this just to create a new line after the previous problem.
def multiply(x, y)
  x * y
end

puts multiply(2,3)

# 4
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# This will not print anything because we invoke puts after return. The method stops reading code once it gets to return so it never sees the puts command.

# 5
#   1)
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
#   2) It returns nil because puts always returns nil.

# 6 When calling the calculate_product method, you included the wrong number of arguments. You only included one argument, but you should have included two.


