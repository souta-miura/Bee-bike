class ApplicationController < ActionController::Base
    before_action :conigure_permitted_parameters, if: :devise_controller?
    
    def after_sign_in_path_for(resource)
        case resource
        when Admin
            admin_path
        when User
            root_path
        end
    end
    
    protected
    
    def conigure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :encrypted_password, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :phone_number])
    end
end
