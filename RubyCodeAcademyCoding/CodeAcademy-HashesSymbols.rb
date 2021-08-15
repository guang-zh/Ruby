# CodeAcademy Ruby
# Hashes and Symbols

no_nil_hash=Hash.new("not nil values")


# Symbols
menagerie = { :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}

puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

my_first_symbol =  :blanco

symbol_hash = {
  :one => 1,
  :cat => 'blanco',    # Fill in these two blanks!
  :hamster => 'yuni',
}

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!
symbols = []
strings.each do |s|
  symbols.push(s.to_sym)
end

print symbols


#symbols.each do |sym|
#  puts sym
#end

"hello".intern
# ==> :hello


movies = {
  :untouchable => "disability and black man",
  :untamed => "pure love"
}


movies = {
  untouchable:"disability and black man",
  untamed:"pure love"
}


require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."



movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

good_movies = movie_ratings.select{|k,v| v>3}
movie_ratings.each_key{|k| puts k}


ovies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end



movies = {
  untouchable: 5,
  untamed: 5,
  starwars: 3,
}

puts "Input your action"
choice = gets.chomp

case choice
  when "add" 
    puts "Input movie title"
    title = gets.chomp.to_sym
    if movies[title.to_sym].nil?
      puts "Input rating"
      rating = gets.chomp.to_i
      movies[title.to_sym] = rating.to_i
    else
      puts "movie already exists"
    end
  when "update"
    puts "Input movie title"
    title = gets.chomp.to_sym
    if movies[title.to_sym].nil?
      puts "Movie does not exist"
    else
      puts "Input rating"
      rating = gets.chomp.to_i
      movies[title.to_sym] = rating.to_i
    end
  when "display"
    movies.each do |movie,rating| 
      puts "#{movie}: #{rating}"
    end
  when "delete"
    puts "Input movie title to be deleted"
    title = gets.chomp.to_sym
    if movies[title.to_sym].nil?
      puts "Error, movie does not exist"
    else
      movies.delete(title.to_sym)
      movies.each do |movie,rating| 
        puts "#{movie}: #{rating}"
      end
    end
  else
    puts "Error!"
end