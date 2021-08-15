print "input something: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/,"th")
  user_input.capitalize!
  puts "new string is #{user_input}"
else 
  print "no s in the string"
end