class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :config_perm_params!, if: :devise_controller?

  def index; end

  def config_perm_params!
    devise_parameter_sanitizer.permit(
        :sign_up, 
        keys: [:username, :email, :password, :password_confirmation, :remember_me]
    )
    
    devise_parameter_sanitizer.permit(
        :sign_in, 
        keys: [:login, :username, :email, :password, :remember_me]
    )
    
    devise_parameter_sanitizer.permit(
        :account_update, 
        keys: [:username, :email, :password, :password_confirmation, :current_password]
    ) 

  end
end
