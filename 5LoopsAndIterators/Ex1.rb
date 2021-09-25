# 1
# [1, 2, 3, 4, 5] .each will always return the original array it was called on.

# 2
puts "Write a word."
  word = gets.chomp

loop do
    if word == "STOP"
      break
    else
      puts "Would you mind writing another word?"
    end
end