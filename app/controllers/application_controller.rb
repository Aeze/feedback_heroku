class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_admin!, if: :no_admin?

  protect_from_forgery with: :exception

  protected 

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end

  def no_admin?
    if Admin.count < 1
      return true
    else 
      return false
    end
  end


end
