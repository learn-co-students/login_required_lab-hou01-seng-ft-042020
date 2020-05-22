class SecretsController < ApplicationController
    before_action :require_login
    
    def require_login
        redirect_to login_path unless current_user
    end

    def show
    end

end
