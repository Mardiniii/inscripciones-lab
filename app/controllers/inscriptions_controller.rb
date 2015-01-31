class InscriptionsController < ApplicationController
	before_action :authenticate_user!
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
		  redirect_to @inscription
		else
		  render action: :new
		end
	end

	def edit
		@inscription = Inscription.find(params[:id])
		@club_id = params[:club_id]
		@tournament_id = params[:tournament_id]
		@club = Club.find(@club_id)
		@tournament = Tournament.find(@tournament_id)
	end

	def update
		@inscription = Inscription.find(params[:id])
		if @inscription.update(inscription_params)
			redirect_to @inscription			
		end
	end

	def select_inscription
		if current_user.user?
			@inscriptions = current_user.club.inscriptions
		elsif current_user.admin?
			@club_id = params[:club_id]
			@inscriptions = Club.find(@club_id).inscriptions
		end
	end

	def show
		@inscription = Inscription.find(params[:id])
		@registers = @inscription.registers
		@club = Club.find(@inscription.club_id)
		@tournament = Tournament.find(@inscription.tournament_id)
	end

	def destroy
		@inscription = Inscription.find(params[:id])
		@inscription.destroy
		redirect_to inscription_index_path
	end

	private
		def inscription_params
  		params.require(:inscription).permit(:club_id, :tournament_id, registers_attributes: [ :id, :register_type_id, :identification, :first_name, :avatar, :second_name, :first_last_name , :second_last_name , :date_of_birth, :eps, :email , :_destroy ])
		end
end