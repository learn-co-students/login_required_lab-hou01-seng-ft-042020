class SessionsController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

      def new 
    end 

    def create
        if params[:name].blank? 
            redirect_to "/"
        else 
            session[:name]=params[:name]
            redirect_to "/"
        end 
    end 

    def destroy 
        session.delete :name
    end 

    def current_user 
        session.current_user 
    end 

  end
  