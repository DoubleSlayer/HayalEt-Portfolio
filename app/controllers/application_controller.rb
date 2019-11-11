class ApplicationController < ActionController::Base
  #protect_from_forgery with: :execption

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:mame])
    #devise_parameter_sanitizer.permit(:account_update, keys: [:mame])

    devise_parameter_sanitizer.permit(:sign_up) { |keys| keys.permit(:name, :email, :password, :password_confirmation)}
    devise_parameter_sanitizer.permit(:account_update) { |keys| keys.permit(:name, :email, :password, :password_confirmation, :current_password)}
  end
end
