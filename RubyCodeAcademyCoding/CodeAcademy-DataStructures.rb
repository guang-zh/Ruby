# Data Structures

# Arrays, Hashes

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each {|sub_array| sub_array.each {|item| puts item} }

secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
  
secret_identities.each do |key, value|
  puts "#{key}: #{value}"
end

lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each do |key, value|
  puts value
end

puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }


puts "enter text:"
text = gets.chomp
words = text.split(" ")

frequencies = Hash.new(0)

puts "enter text:"
text = gets.chomp
words = text.split(" ")

frequencies = Hash.new(0)

words.each {|word| frequencies[word] += 1}

frequencies = frequencies.sort_by do |key, value|
  value
end
frequencies.reverse!

puts "enter text:"
text = gets.chomp
words = text.split(" ")

frequencies = Hash.new(0)

words.each {|word| frequencies[word] += 1}

frequencies = frequencies.sort_by do |key, value|
  value
end
frequencies.reverse!

frequencies.each do |key, value|
  puts key+" "+value.to_s
end


