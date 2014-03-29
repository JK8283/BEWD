class RitsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@rit = Rit.all
	end

	def show
		@rit = Rit.find_by(hashcode: params[:rits].to_i)
		@urllink = "localhost:3000/#{@rit.hashcode}"
	end

	def preview
		 	
	end

	def redirector
		@rit = Rit.find_by(hashcode: params[:rits].to_i)
		redirect_to "http://#{@rit.link}"
	end

	def new
		@rit = Rit.new
	end

	def create
		@rit = Rit.new(rit_params)
		@rit.hashcode = rand(10000)
		if @rit.save
			render :index
		else 
			render :new
		end
	end

	private
  	def rit_params
  		params.require(:rit).permit(:link)
  	end

end
