# CodeAcademy: Ruby
# Refactoring

ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly

puts "blanco is cute" if true

puts "yuni is a hamster" unless false

puts 9%2 == 0? "num is even": "num is odd"

puts "Hello there!"
greeting = gets.chomp

# Add your case statement below!
case greeting
  when "English" then puts "Hello!"
  when "French" then puts "Bonjour!"
  when "German" then puts "Guten Tag!"
  when "Finnish" then puts "Haloo!"
  else puts "I don't know that language!"
end

favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book


favorite_language ||= "Python"
puts favorite_language
#Python
#Your favorite language isn't Ruby?? For shame!

def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end

def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each {|x| puts x if x%2==0}

"L".upto("P"){|letter| puts letter}

age = 26
age.respond_to?(:next)

alphabet = ["a", "b", "c"]
alphabet << "d" # Update me!

caption = "A giraffe surrounded by "
caption << "weezards!" # Me, too!
puts caption

favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end

puts "One is less than two!" if 1 < 2

puts 1<2? "One is less than two!" : "One is not less than two."

puts "What's your favorite language?"
language = gets.chomp

case language
  when "Ruby"
    puts "Ruby is great for web apps!"
  when "Python"
    puts "Python is great for science."
  when "JavaScript"
    puts "JavaScript makes websites awesome."
  when "HTML"
    puts "HTML is what websites are made of!"
  when "CSS"
    puts "CSS makes websites pretty."
  else
    puts "I don't know that language!"
end

favorite_animal ||= "blanco"

def square(n)
  n*n
end

10.times do
  puts "Knock knock."
  puts "Who's there?"
end

require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  unless n.is_a? Integer
    return "n must be an integer."
  end

  if n <= 0
    return "n must be greater than 0."
  end
  
  return Prime.first n
end

puts first_n_primes(10)

require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)
  puts "n must be an integer." unless n.is_a? Integer
 
  return "n must be greater than 0."  if n <= 0
  
  Prime.first n
end

puts first_n_primes(10)

require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  return "n must be an integer." unless n.is_a? Integer
 
  return "n must be greater than 0."  if n <= 0

  Prime.first n
end

first_n_primes(10)


