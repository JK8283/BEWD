class Movie < ActiveRecord::Base

	validates :title, :year, :director, presence: true
  	validates :director, length: { minimum: 1 }

  	def self.search_for(query)
  		where('title LIKE :query OR director LIKE :query', query: "%#{query}%")
  	end

end
