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
api_data2 = RestClient.get("http://mashable.com/stories.json")
api_data3 = RestClient.get("http://digg.com/api/news/popular.json")

# puts api_data.class
parsed_json1 = JSON.parse(api_data1)
parsed_json2 = JSON.parse(api_data2)
parsed_json3 = JSON.parse(api_data3)

# counts the number of times "a", "b", "c", "d" & "e" show up in the title.
def countAtE (titlevar)
	puts "JK Votes: " + titlevar.count("a-e").to_s
end

## REDDIT:
puts "Welcome to Reddit!"
puts ""

parsed_json1["data"]["children"].each do |article|
	puts "Source: Reddit"
	puts "Title: " + article["data"]["title"]
	puts "Author: " + article["data"]["author"]
	puts "Category: " + article["data"]["subreddit"]
	puts "Upvotes: " + article["data"]["ups"].to_s
	countAtE article["data"]["title"]
	puts ""
end

## Mashable:
puts "Welcome to Mashable!"
puts ""

parsed_json2["new"].each do |article|
	puts "Source: Mashable"
	puts "Title: " + article["title"]
	puts "Author: " + article["author"]
	puts "Category: " + article["channel"]
	puts "Shares: " + article["shares"]["total"].to_s 
	countAtE article["title"]
	puts ""
end

## DIGG
puts "Welcome to Digg!"
puts ""

parsed_json3["data"]["feed"].each do |article|
	puts "Source: Digg"
	puts "Title: " + article["content"]["title"]
	puts "Author: " + article["content"]["author"]
	puts "Category: " + article["content"]["tags"].flatten[0]["display"]
	puts "Diggs: " + article["digg_score"].to_s
	countAtE article["content"]["title"]
	puts ""

end

