class SuggestionsController < ApplicationController

	def index
		@suggestions = Suggestion.all
	end

	def show
		id = params[:id]
		# params = {:id => 1}
		@suggestion = Suggestion.find(id)
	end
end
