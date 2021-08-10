class UsersController < ApplicationController

    def index
        session[:count] ||= 0
    end
    
    def form_handler
        flash[:success] = "You did it! U submitted this form #{session[:count]}x"
        session[:count] = session[:count] + 1
        session[:input] = params[:user]
        redirect_to '/result'
    end
    
    def show
        @input = session[:input]
    end
end
