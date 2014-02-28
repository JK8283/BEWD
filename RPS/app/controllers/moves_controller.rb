class MovesController < ApplicationController

	def index
		@moves = Move.all
	end

	def show
		@opponentmove = ["Rock", "Paper", "Scissors"].sample
		@move = Move.find(params[:id])

		outcome(@opponentmove)
	end

	def outcome(computermove)
		if computermove == @move.tie
			@endmessage = "You have tied your opponent."
		elsif computermove == @move.win
			@endmessage = "You have won, your opponent chose #{computermove}!"
		elsif computermove == @move.lose
			@endmessage = "You have lost, your opponent chose #{computermove}!"
		end
	end

end
