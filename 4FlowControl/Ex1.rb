# 1
# (32 * 4) >= 129    
    # False, 128 is not >= 129
# false != !true    
    # False, !true is false, so false is equal to false.
# true = 4    
    # False, the integer 4 does not equal the boolean true.
# false == (847 == '874')    
    # True, the integer of 847 is not equal to the string
# (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
    # True
    #    false || !(20 == 20) || 82 == 82 || false
    #    false || false || true || false
    #    false || true

# 2
def caps(string)
  if string.length > 10
    string.upcase
  else 
    string
  end
end

puts caps("Matt Buck")
puts caps("Matthew Buckman")

# 3
puts "Pick a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
  puts "You need to pick a number between 0 and 100."
elsif number <= 50
  puts "#{number} is between 0 and 50."
elsif number <= 100
  puts "#{number} is between 51 and 100."
else
  puts "You need to pick a number between 0 and 100."
end

# 4
# Snippet 1: FALSE, one is an integer and the other is a string.
# Snippet 2: Did you get it right?
# Snippet 3: Alright now!

# 5
# An 'end' is required to close both the method definition and the if/else statement.
# Since there is only one 'end' written in the program, adding one more 'end' after the one already written will fix the program.

# 6
# 1st line: Error, one is an integer and the other a string.
# 2nd line: false, an integer can't equal a string.
# 3rd line: false
# 4th line: true
# 5th line: false
# 6th line: true