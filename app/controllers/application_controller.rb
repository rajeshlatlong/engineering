class ApplicationController < ActionController::Base
   # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?
    #before_action :check_secret_code, only: [:create]
   

    protected
        
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first, :last, :secretcode, :email, :password) }
            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first, :last, :email, :password, :current_password) }
        end
        def endcheck_secret_code
            if params[:secretcode] == "foobar"
               User.create
            else
               render 'new'
            end
        end
end
