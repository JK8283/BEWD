# You will create a terminal app for users to search for movie info with the OMDB API. 
# Documentation for this API can be found here... http://www.omdbapi.com/

# In order to fulfill the requirements you will have to make to separate calls to the omdbapi, 
# with different parameters. Hint: parameters are the the arguments sent in a webrequest 
# after the ? in the url. Inhttp://www.omdbapi.com?s=title, "s=title" is a parameter.

# Requirements
# Users are prompted to enter a title to search for.
# Users are given a numbered list of titles with years and are prompted to choose one.
# After users choose a title they are given more details about this movie.

#encoding: UTF-8
require 'pry' # binding.pry
require 'rest-client'
require 'json'

def setup
  puts "Please enter a movie title to search for:"
  title = gets.chomp.tr(" ", "?")
  return title
end

def chooser
  puts "Please enter the #{} of the movie you'd like to learn about:"
  choice = gets.chomp.to_i
  return choice
end

def api_call(title)
  api_data = RestClient.get("http://www.omdbapi.com?s=" + title)
  JSON.parse(api_data)
end

def api_call_id(imdbID)
  api_data = RestClient.get("http://www.omdbapi.com?i=" + imdbID)
  JSON.parse(api_data)
end

title = setup
parsed_json = api_call(title)

counter = 0
movie_list = []
parsed_json["Search"].each do |movie|
	counter += 1
  movie_list.push(movie["imdbID"])
	puts "#{counter}. " + movie["Title"] + " (" + movie["Year"] + ")"
end 

choice = chooser
parsed_json_id = api_call_id(movie_list[choice - 1])

puts "\n"
puts "Title: " + parsed_json_id["Title"]
puts "Year: " + parsed_json_id["Year"]
puts "Rated: " + parsed_json_id["Rated"]
puts "Released: " + parsed_json_id["Released"]
puts "Director: " + parsed_json_id["Director"]
puts "Writers: " + parsed_json_id["Writer"]
puts "Actors: " + parsed_json_id["Actors"]
puts "Plot: " + parsed_json_id["Plot"]


