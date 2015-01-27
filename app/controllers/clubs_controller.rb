class ClubsController < ApplicationController
	before_action :authenticate_user!
	def new
		@club = Club.new
		@club.president = President.new
		@club.manager = Manager.new
	end

	def create
		@club = Club.new(club_params)
		@club.user_id = current_user.id
		if @club.save
		  redirect_to @club
		else
		  render action: :new
		end
	end

	def show
		@club = Club.find(params[:id])
	end

	private
		def club_params
  		params.require(:club).permit(:name, :address, :email, :municipality, :phone, :cellphone, president_attributes: [:name,:identification,:phone,:fax,:cellphone,:email])
		end
end