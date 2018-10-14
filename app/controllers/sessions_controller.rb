class SessionsController < ApplicationController
    def new
    end

    def create
      if params[:name] == nil
        redirect_to login_path
      else
        session[:name] = params[:name]
        puts "Hi, #{params[:name]}."
        redirect_to root_path
      end
    end

    def destroy
      session.delete :name
    end
end
