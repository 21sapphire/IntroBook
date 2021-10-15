names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s has #{name.length} letters."
  rescue
    puts "Something went wrong!"
  end
end