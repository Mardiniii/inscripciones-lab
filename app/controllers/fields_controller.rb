class FieldsController < ApplicationController
	before_action :authenticate_user!
	def new
		@field = Field.new
		@field.field_hours.build
	end

	def create
		@club = current_user.club
		@field = Field.new(field_params)
		@field.club_id = current_user.club.id
		if @field.save
		  redirect_to @club
		else
		  render action: :new
		end
	end

	# def edit
	# 	@field = Field.find(params[:id])
	# end

	# def update
	# 	@field = Field.find(params[:id])
	# 	if @field.update(field_params)
	# 		redirect_to @field			
	# 	end
	# end

	def show
		@field = Field.find(params[:id])
	end

	private
		def field_params
  		params.require(:field).permit(:field_type, :address, field_hours_attributes: [ :day, :open_hour, :closing_time, :_destroy ] )
		end
end
