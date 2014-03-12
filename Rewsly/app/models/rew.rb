class Rew < ActiveRecord::Base

	validates :title, :story, :category, :upvotes, presence: true

	def self.search_for(query)
		where('title LIKE :query OR category LIKE :query', query: "%#{query}%")
	end

end
