class MatchesController < ApplicationController
	
	def new
	end

	def create
		#render plain: params[:match].inspect

		@match = Match.new(match_params)
 		@match.owner = current_user
  		@match.save
  		flash[:success] = "Match registered!"

  		redirect_to '/history'


	end

	private
  	def match_params
    	params.require(:match).permit(:your_score, :their_score,:played_date,:opponent_id)
  	end


end
