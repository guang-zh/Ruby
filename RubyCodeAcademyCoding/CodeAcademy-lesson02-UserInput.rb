# https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-introduction-to-ruby-u/cheatsheet

print "What's your first name?"
first_name = gets.chomp
print "last name?"
last_name=gets.chomp
print "city?"
city = gets.chomp
print "state?"
state = gets.chomp

first_name.capitalize!
last_name.capitalize!
city.capitalize!
state.upcase!

print "first name is #{first_name}, last name is #{last_name}, city is #{city}, state is #{state}"

