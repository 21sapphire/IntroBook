# 1
family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank", "rob", "david"],
           aunts: ["mary","sally", "susan"]
          }
immediate_family = family.select { |relation, name| (relation == :sisters) || (relation == :brothers) }

arr = immediate_family.values.flatten

p arr

# 2
# Merge allows you to merge two hashes together, but leaves the original unchanged.
# Merge! destructively merges two hashes together.

dogs = { beagles: ["Margot", "Snoopy"],
         pomskys: ["Walter", "Fluffy"]
        }
cats = { ragdolls: ["Sapphire", "Ash"],
         persians: ["Goob", "Trick"],
         himalayans: ["Oscar", "Buns"]
        }
p dogs.merge(cats)
p dogs
p dogs.merge!(cats)
p dogs

# 3
best_songs = { radiohead: "Paranoid Android",
               lemonheads: "Hospital",
               nirvana: "About a Girl"
              }
best_songs.each_key { |artist| puts artist}
best_songs.each_value { |song| puts song}
best_songs.each { |artist, song| puts "#{artist}'s best song is #{song}."}

# 4
person = { name: "Bob",
           occupation: "web developer",
           hobbies: "painting"
          }
puts person[:name]

# 5
art = { painting: "canvas", 
        sculpting: "clay",
        sketching: "paper"
       }
if art.value?("paper")
  puts "Yes, you can do art on it."
else
  puts "No, you cannot create art on this."
end

# 6
# The x on line 2 is a symbol.
# The x on line 3 represents the variable, which is a string.

# 7
# .keys is not a method for Arrays, so B.
