class Shirt < ActiveRecord::Base
	validates :name, presence: true
	validates :description, length: {minimum: 10}
end
