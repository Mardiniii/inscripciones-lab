class RegistrationsController < ApplicationController
	def welcome_registration
		club_id = params[:club_id]
		tournament_id = params[:tournament_id]
		@club = Club.find(club_id)
		@tournament = Tournament.find(tournament_id)
	end

	def new
		club_id = params[:club_id]
		tournament_id = params[:tournament_id]
		@club = Club.find(club_id)
		@tournament = Tournament.find(tournament_id)
		@registration = Registration.new
		@registration.registers.build
	end

	def create
	end

	private
		def registration_params
  		params.require(:registration).permit( registers_attributes: [ :register_type_id, :first_name, :second_name, :first_last_name , :second_last_name , :date_of_birth, :eps, :email , :_destroy ] )
		end
end