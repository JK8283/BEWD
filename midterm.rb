require 'pry' # binding.pry
require 'rest-client'
require 'json'

require_relative 'lib/movie'
# require_relative 'lib/actor'

def lookup_movie
  puts "-----------New Movie Actors Search-----------"
  puts "What is the name of the movie?"
  title = gets.strip

  puts "What year was #{title} released?"
  year = gets.to_s

  return Movie.new(title, year)
end

def api_call(title, year)
  api_data = RestClient.get(URI.encode("http://www.omdbapi.com?t=#{title}&y=#{year}"))
  JSON.parse(api_data)
end


movie_info = lookup_movie


# title = movie_info.title
# year = movie_info.year
parsed_json = api_call movie_info.title, movie_info.year

# converts json list to array:
if parsed_json["Response"] != "False"

  movie_info.actors = parsed_json["Actors"].split(",")

  puts "Actors:"
  counter = 0
  movie_info.actors.each do |actor|
    counter += 1
    puts "#{counter}. #{actor.strip}"
  end

else
  puts "That was not a valid movie & year combination. Try again. \n"

end



