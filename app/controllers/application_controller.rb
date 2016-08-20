class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  # def current_user
  #   @current_user ||= User.find_by(id: cookies[:user_id]) if cookies[:user_id]
  # end
  #
  # helper_method :current_user
end
