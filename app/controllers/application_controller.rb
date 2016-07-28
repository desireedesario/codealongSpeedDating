class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :img_url, :gender, :description])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :img_url, :gender, :description])
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :get_languages
  
  def get_languages
    @menu_languages = Language.all
  end

end
