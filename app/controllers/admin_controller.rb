class AdminController < ApplicationController
	before_action :authenticate_user!
	before_filter :admin_only

	def home
		
	end

  def manage_directors
  end

	def search_register
		if params[:register_type_id].present?
      @registers = Register.where("register_type_id = ?", params[:register_type_id])
    end
    if params[:identification].present?
      @registers = Register.where("identification = ?", params[:identification])
    end
    if params[:first_name].present?
      @registers = Register.where("first_name = ?", params[:first_name])
    end
    if params[:second_name].present?
      @registers = Register.where("second_name = ?", params[:second_name])
    end
    if params[:first_last_name].present?
      @registers = Register.where("first_last_name = ?", params[:first_last_name])
    end
    if params[:second_last_name].present?
      @registers = Register.where("second_last_name = ?", params[:second_last_name])
    end
	end

	def admin_only
    unless current_user.admin?
      redirect_to root_path, :alert => "Access denied."
    end
  end
end
