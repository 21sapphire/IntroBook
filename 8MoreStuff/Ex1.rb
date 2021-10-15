# 1
def has_lab?(word)
  if word =~ /lab/
    puts word
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("pans labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")

# 2
# Nothing is printed. "execute" is never activated with the .call metthod.
# It returns a proc

# 3
# Exception handling allows a program to continue working even if it encounters an error.

# 4
def execute(&block)
  block.call
end

execute {puts "Hello from inside the execute method!"}

# 5
# To use a block as a parameter you have to include the & symbol. The first line should read:
# def execute(&block)

