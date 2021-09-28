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