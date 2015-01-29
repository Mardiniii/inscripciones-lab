class RegistrationsController < ApplicationController
	def welcome_registration
		club_id = params[:club_id]
		tournament_id = params[:tournament_id]
		@club = Club.find(club_id)
		@tournament = Tournament.find(tournament_id)
	end

	def new
		@registration = Registration.new
	end

	def create
	end
end
