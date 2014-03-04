class MoviesController < ApplicationController

	def index
		# @movies = Movie.all
		@movies = Movie.search_for(params[:q])
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def search
    	@searchmovies = Movie.search_for(params[:q])
  	end

end
