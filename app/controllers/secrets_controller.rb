class SecretsController < ApplicationController 

    def index
    end 

    def show 
        if !current_user
            redirect_to '/'
        else
            require_login
        end 
    end 

    def require_login 
        return head(:forbidden) unless session.include? :name
    end 
end 