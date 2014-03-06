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

  	def new
  		@movie = Movie.new
  	end

  	def create
  		@movie = Movie.new(movie_params)
  		if @movie.save
  			redirect_to root_path
  		else
  			render :new
  		end
  	end

  	def edit
  		@movie = Movie.find(params[:id])
  	end

  	def update
  		@movie = Movie.find(params[:id])
  		if @movie.update(movie_params)
  			redirect_to root_path
  		else
  			render :edit
  		end
  	end

  	def destroy
  		@movie = Movie.find(params[:id]).destroy
  		redirect_to root_path
  	end


  	private
  	def movie_params
  		params.require(:movie).permit(:title, :year, :director)
  	end

end
