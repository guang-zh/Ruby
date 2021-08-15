# 03_looping

# while
number=1

while number <= 10
	puts number
	number=number+1
end


# until
number=0
until number>10
	puts number
	number+=1
end

# FOR
for number in 1>>10
	puts number
end

for number in 1..10
	next if number%2==0
	puts number
end
for number in 1..10
	next if number.even?
	puts number
end

# Loop iterator

# loop {puts "hellow world"} # requires break

number=1
loop do 
	puts number
	number += 1
	break if number>10
end

# Each
numbers=[1,2,3,4,5,6]

numbers.each do |number|
	puts number
end

(1..10).each do |number|
	puts number
end

50.times do |
	puts "Around the world, around the world!"
end

10.times do 
	puts number
	number+=1
end

# login example
username="Potato123"
password="pineapple!"
logged_in=false

until logged_in
	puts "What is your username?"
	entered_username=gets.chomp
	puts "What is your password?"
	entered_password=gets.chomp

	if username==entered_username && password==entered_password
		puts "Your are logged in!"
		logged_in=true
	else
		puts "You have the wrong credentials"
	end
end

puts "You have exited the loop!"