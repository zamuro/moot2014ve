class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ nivel_id: [] }, :email, :password, :password_confirmation) }
	end

  protect_from_forgery with: :exception
  def not_found
  	render "inicio/prohibido"
  end
  def current_ability
    @current_ability ||= Ability.new(current_usuario)
  end
end
