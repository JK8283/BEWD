class TripsController < ApplicationController

	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

	def index
		@trip = Trip.all
	end

	def show
		@trip = Trip.find params[:id]
	end

	def new
		@trip = Trip.new
	end

	def create
		safe_trip_params = params.require(:trip).permit(:travelername, :tripname, :destination, :departure, :return, :budget)
		@trip = Trip.new(safe_trip_params)
		if @trip.save
			redirect_to root_path
		else
			render :new
		end
	end

	def edit
		@trip = Trip.find(params[:id])
	end

	def update
		safe_trip_params = params.require(:trip).permit(:travelername, :tripname, :destination, :departure, :return, :budget)
		@trip = Trip.find(params[:id])
		if @trip.update(safe_trip_params)
			redirect_to root_path
		else
			render :edit
		end
	end

	def destroy
		@trip = Trip.find(params[:id]).destroy
		redirect_to root_path
	end

end
