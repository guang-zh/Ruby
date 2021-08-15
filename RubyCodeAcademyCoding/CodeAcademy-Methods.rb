# Methods, Blocks, Sorting
def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

def greeter(name)
  return "welcome, "+ name
end

def by_three?(number)
  if number%3==0
    return true
  else
    return false
  end
end

# method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"

my_array = [1, 2, 3, 4, 5]

my_array.each do |n|
  puts n*n
end

fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! do |fruitOne, fruitTwo|
  fruitTwo <=> fruitOne
end

