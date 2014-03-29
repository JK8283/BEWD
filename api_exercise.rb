require 'rest-client'
require 'pry'
require 'json'

response = RestClient.get('http://www.omdbapi.com/?s=sharknado')

json = JSON.parse(response)

puts json["Search"].length

json["Search"].each do |movie|
	if (movie["Title"].include? "Superman") || (movie["Title"].include? "Sharknado 2")
		puts "#{movie["Title"]}. Released #{movie["Year"]}"
	else
	end
end
