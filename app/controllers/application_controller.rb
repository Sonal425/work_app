class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys: [:type])
    devise_parameter_sanitizer.permit(:account_update,keys: [ :picture, addresses_attributes: [ :description, :_destroy, :id]])
  end
end
