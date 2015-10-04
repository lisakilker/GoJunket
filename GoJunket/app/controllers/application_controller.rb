class ApplicationController < ActionController::Base

	protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

    def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) << :name
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :date_of_birth, :gender, :password_confirmation) }
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :gender, :date_of_birth, :avatar, :orientation, :relationship, :kids, :smokes, :drinks, :location, :description, :education, :interest_ids, :state) }
    
    end
end
