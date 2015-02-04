class AdminController < ApplicationController
	before_action :authenticate_user!
	before_filter :admin_only

	def home
		
	end

  def manage_directors
    if params[:club].present?
      @clubs = Club.all
    end
    if params[:president].present?
      @presidents = President.all
    end
    if params[:manager].present?
      @managers = Manager.all
    end
  end

	def search_register
		if params[:register_type_id].present?
      @registers = Register.where("register_type_id = ?", params[:register_type_id])
      if params[:identification].present?
        @registers = @registers.where("identification = ?", params[:identification])
      end
      if params[:first_name].present?
        @registers = @registers.where("first_name = ?", params[:first_name])
      end
      if params[:second_name].present?
        @registers = @registers.where("second_name = ?", params[:second_name])
      end
      if params[:first_last_name].present?
        @registers = @registers.where("first_last_name = ?", params[:first_last_name])
      end
      if params[:second_last_name].present?
        @registers = @registers.where("second_last_name = ?", params[:second_last_name])
      end
      else
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
	end

  def teams
    if params[:tournament_id].present?
      @inscriptions = Inscription.where("tournament_id = ?", params[:tournament_id])
    end
  end

  def coaches
    if params[:tournament_id].present?
      @registers = Register.all.coach
    end
    ## Falta segmentarlos por torneo los entrenadores
  end

  def mosaico
    @inscription = Inscription.find(params[:inscription_id])
    @registers = @inscription.registers
  end

	def admin_only
    unless current_user.admin?
      redirect_to root_path, :alert => "Access denied."
    end
  end
end
