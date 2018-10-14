class SessionsController < ApplicationController
    def new
    end

    def create
      if params[:name] == nil
        redirect_to login_path  
      else
        session[:username] = params[:username]
        redirect_to root_path
      end
    end

    def destroy
      session.delete :username
    end
end
