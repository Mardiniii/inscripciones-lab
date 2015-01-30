class InscriptionsController < ApplicationController
	def welcome_inscription
		club_id = params[:club_id]
		tournament_id = params[:tournament_id]
		@club = Club.find(club_id)
		@tournament = Tournament.find(tournament_id)
	end

	def new
		@club_id = params[:club_id]
		@tournament_id = params[:tournament_id]
		@club = Club.find(@club_id)
		@tournament = Tournament.find(@tournament_id)
		@inscription = Inscription.new
		@inscription.registers.build
	end

	def create
		@inscription = Inscription.new(inscription_params)
		if @inscription.save
		  redirect_to current_user.club
		else
		  render action: :new
		end
	end

	private
		def inscription_params
  		params.require(:inscription).permit(:club_id, :tournament_id, registers_attributes: [ :register_type_id, :first_name, :second_name, :first_last_name , :second_last_name , :date_of_birth, :eps, :email , :_destroy ])
		end
end