class ClubsController < ApplicationController
	before_action :authenticate_user!
	def new
		@club = Club.new
		@club.president = President.new
		@club.manager = Manager.new
		f = @club.fields.build
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

	def edit
		@club = Club.find(params[:id])
	end

	def update
		@club = Club.find(params[:id])
		if @club.update(club_params)
			redirect_to @club			
		end
	end

	def show
		@club = Club.find(params[:id])
		@fields = @club.fields
	end

	private
		def club_params
  		params.require(:club).permit(:name, :address, :email, :municipality, :phone, :cellphone, :avatar, president_attributes: [:name,:identification,:phone,:fax,:cellphone,:email], manager_attributes: [:name,:identification,:phone,:cellphone,:email] )
		end
end