# ApplicationController is the base class for all controllers in your application.
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #   before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: exception.message
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password password_confirmation])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[name email password password_confirmation current_password])
  end

  def after_sign_out_path_for(_resource_or_scope)
    root_path
  end

  def after_sign_in_path_for(_resource)
    groups_path # your path
  end
end
