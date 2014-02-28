
# Expand Reddit App
# - Have "Welcome to Reddit" message
# - Print title, author, category, upvotes
#   - Write a method to calculate upvotes
#   - Organize code into methods
# - Add http://mashable.com.json

require 'rest-client'
require 'json'
require 'pry'

api_data1 = RestClient.get("http://www.reddit.com/.json")
api_data2 = RestClient.get("http://mashable.com.json")
api_data3 = RestClient.get("http://digg.com/api/news/popular.json")

# puts api_data.class
parsed_json1 = JSON.parse(api_data1)
parsed_json2 = JSON.parse(api_data2)
parsed_json3 = JSON.parse(api_data3)

# counts the number of times "a", "b", "c", "d" & "e" show up in the title.
def countAtE (titlevar)
	puts titlevar.count("a-e")
end

## REDDIT:
puts "Welcome to Reddit!"
puts "/n"

parsed_json1["data"]["children"].each do |article|
	puts "Title: " 
	puts article["data"]["title"]
	puts ""
	
	puts "Author: " 
	puts article["data"]["author"]
	puts ""

	puts "Category: " 
	puts article["data"]["subreddit"]
	puts ""

	puts "Upvotes: " 
	puts article["data"]["ups"].to_i
	puts ""

	puts "JKvotes: "  
		countAtE article["data"]["title"]
	puts ""
	puts "***********"

## DIGG
puts "Welcome to Digg!"
puts "/n"

parsed_json3["data"]["feed"].each do |article|
	puts "Title: " 
	puts article["content"]["title_alt"]
	puts ""
	
	puts "Author: " 
	puts article["content"]["author"]
	puts ""

	puts "Category: " 
	puts article["tags"]["display"]
	puts ""

	puts "Diggs: " 
	puts article["digg_score"].to_i
	puts ""

	puts "JKvotes: "  
		countAtE article["content"]["title_alt"]
	puts ""
	puts "***********"

end

