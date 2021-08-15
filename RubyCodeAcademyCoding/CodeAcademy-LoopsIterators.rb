# loops and iterators
# https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-looping-with-ruby-u/cheatsheet

counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end

counter = 1
until counter > 10
  puts counter
  # Add code to update 'counter' here!
  counter=counter+1
end

for num in 1..15
  puts num
end

for num in 1..20
  puts num
end

i = 20
loop do
  i -= 1
  next if i%2==1
  print "#{i}"
  break if i <= 0
end

odds = [1,3,5,7,9]

# Add your code below!

odds.each {|item| print item*2}

20.times {print "meow"}



puts "Enter some text: "
text = gets.chomp

puts "Enter words to redact: "
redact = gets.chomp

words = text.split(" ")
words.each { |word| 
  if word == redact
    print "REDACTED "
  else
    print "#{word}  "
  end }



  