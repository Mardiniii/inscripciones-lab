class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :last_name, :identification_number,:cellphone, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :last_name, :identification_number,:cellphone, :email, :password, :password_confirmation) }
  end

  def after_sign_in_path_for(user)
    if user.role == "admin"
      admin_path
    elsif user.role == "user" && user.club
      puts user.role
      root_path
    elsif user.role == "user"
      new_club_path
    end
  end
end
