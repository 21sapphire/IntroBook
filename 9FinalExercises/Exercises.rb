# 1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |numbers| puts numbers}

# 2
arr2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr2.each do |numbers|
  if numbers > 5
    puts numbers
  end
end

# 3
arr3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr3.select do |numbers|
  numbers % 2 != 0
end
p new_array

# 4
arr3.push(11)
p arr3

arr3.unshift(0)
p arr3

# 5
arr3.delete(11)
p arr3

arr3.push(3)
p arr3

# 6
arr3.uniq!
p arr3

# 7
# An array is an ordered list of elements. A hash is an unordered collection of keys mapped to values.

# 8
hash_old = { :color => "red"}
hash_new = { color: "red"}

# 9
h = {a:1, b:2, c:3, d:4}
  # 1)
p h[:b]
  # 2)
h[:e] = 5
p h
  # 3)
p h.delete_if { |k, v| v < 3.5 }

# 10
# Yes.
# hash = {colors: ['red', 'green', blue'], fruit: ['apples', 'oranges']}
# array = [{color: 'red'}, {fruit: 'apple'}]

# 11
contact_data = [["joe@email.com", "123 Main St.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

p contact_data[0][0]

contacts["Joe Smith"][:email] = contact_data[0][0]
p contacts
contacts["Joe Smith"][:address] = contact_data[0][1]
p contacts
contacts["Joe Smith"][:phone] = contact_data[0][2]
p contacts
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
p contacts

# 12
puts "The email for Joe is: #{contacts["Joe Smith"][:email]}"
puts "The phone number for Sally is: #{contacts["Sally Johnson"][:phone]}"

# 13
arr4 = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

p arr4.delete_if { |string| string.start_with?("s") }
p arr4.delete_if { |string| string.start_with?("s", "w") }

# 14
a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

a = a.map { |words| words.split }
a = a.flatten
p a

# 15
# These hashes are the same! The order and syntax of each hash may be slightly different, but they keys and values are the same.

# 16
contact_data = ["joe@email.com", "123 Main St", "555-123-4567"]
contacts = {"Joe Smith" => {}}
data_fields = [:email, :address, :phone]

contacts.each do |name, data_hash|
  data_fields.each do |info|
    data_hash[info] = contact_data.shift
  end
end

p contacts

contact_data2 = [["joe@email.com", "123 Main St", "555-123-4567"], ["sally@email.com", "404 Not Found Dr", "123-234-3454"]]
contacts2 = { "Joe Smith" => {}, "Sally Johnson" => {} }
data_fields2 = [:email, :address, :phone]

contacts2.each_with_index do |(name, hash), index|
  data_fields2.each do |info|
    hash[info] = contact_data2[index].shift
  end
end

p contacts2

# I continued to play around with this problem to see if I could figure out another way to do it.

data_fields3 = [:email, :address, :phone]
contact_data3 = ["joe@email.com", "123 Main St", "555-123-4567"]
contacts3 = { "Joe Smith" => {} }
new_hash = {}

data_fields3.each do |field_type|
  new_hash[field_type] = contact_data3.first
  contact_data3.slice!(0)
end

contacts3["Joe Smith"] = new_hash

p contacts3

# Trying this version with Joe and Sally.

data_fields4 = [:email, :address, :phone]
contact_data4 = [["joe@email.com", "123 Main St", "555-123-4567"], ["sally@email.com", "404 Not Found Dr", "123-234-3454"]]
contacts4 = { "Joe Smith" => {}, "Sally Johnson" => {} }

contacts4.each_with_index do |(name, data_hash), index|
  data_fields4.each do |data_type|
    data_hash[data_type] = contact_data4[index].first
    contact_data4[index].slice!(0)
  end
end

p contacts4