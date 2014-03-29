class Trip < ActiveRecord::Base

	validates :name, presence: true
	validates :phone, presence: true, length: {minimum: 10, }
	validates :waittime, presence: true

end
