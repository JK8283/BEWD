class RewsController < ApplicationController

	def index
		@rew = Rew.search_for(params[:q])
	end

	def show
		@rew = Rew.find(params[:id])
	end

	def new
		@rew = Rew.new
	end

	def create
		@rew = Rew.new(rew_params)
		if @rew.save
			redirect_to root_path
		else
			render :new
		end
	end

	def edit
		@rew = Rew.find(params[:id])
	end

	def update
		@rew = Rew.find(params[:id])
		if @rew.update(rew_params)
			redirect_to root_path
		else 
			render :edit
		end
	end

	private
	def rew_params
		params.require(:rew).permit(:title, :story, :category, :upvotes)
	end

end
