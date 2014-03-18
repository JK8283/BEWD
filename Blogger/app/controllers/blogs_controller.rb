class BlogsController < ApplicationController

	before_action :authenticate_user!, only: [:new, :create, :edit, :update]

	def index
		@blog = Blog.all
	end

	def show
		@blog = Blog.find params[:id]
	end

	def new
		@blog = Blog.new
	end

	def create
		safe_story_params = params.require(:blog).permit(:title, :author, :body)
		@blog = Blog.new(blog_params)
		@blog.user = current_user
		if @blog.save
			redirect_to root_path
		else
			render :new
		end
	end

	def destroy
		@blog = Blog.find(params[:id]).destroy
		redirect_to root_path	
	end

	def edit
		@blog = Blog.find(params[:id])
	end

	def update
		@blog = Blog.find(params[:id])
		if @blog.update(blog_params)
			redirect_to root_path
		else
			render :edit
		end
	end

	private
	def blog_params
		params.require(:blog).permit(:title, :author, :body)
	end

end
