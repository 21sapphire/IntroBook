# 1
puts "What is your name?"
name = gets.chomp
puts "Hello, #{name}. It's nice to talk to you today."

# 3
10.times {puts name}

# 4
puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts first_name + ' ' + last_name

#5
x = 0
3.times do
  x += 1
end
puts x

# I'm guessing this outputs 3

y = 0
3.times do
  y += 1
  t = y
end
puts t

# I'm guessing this outputs an error because x is not available. I changed the x variable to t since x appeared in the previous program.