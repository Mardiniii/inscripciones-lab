class FieldsController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@fields = current_user.club.fields
	end

	def new
		@field = Field.new
		@field.field_hours.build
	end

	def create
		@club = current_user.club
		@field = Field.new(field_params)
		@field.club_id = current_user.club.id
		if @field.save
		  redirect_to fields_path
		else
		  render action: :new
		end
	end

	def edit
		@field = Field.find(params[:id])
	end

	def update
		@field = Field.find(params[:id])
		if @field.update(field_params)
			redirect_to fields_path
		end
	end

	def show
		@field = Field.find(params[:id])
	end

	def destroy
		@field = Field.find(params[:id])
		@field.destroy
		redirect_to fields_path
	end

	private
		def field_params
  		params.require(:field).permit(:id, :field_type, :address, field_hours_attributes: [ :id, :day, :open_hour, :closing_time, :_destroy ] )
		end
end
