class SessionsController < ApplicationController
    def index
    end

    def create
        user = User.find_by(email: params[:email])
        if user.presence && params[:password] == user.password
            session[:user_id] = user.id
            redirect_to character_path, notice: "logged in successfully"
        else
            flash[:alert] = "Invalid email or password"
            render :new
        end
    end
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out"
    end
end
