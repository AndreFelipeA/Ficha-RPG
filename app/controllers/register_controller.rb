class RegisterController < ApplicationController
  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      flash[:success] = "Successfully created user." 	
      redirect_to root_path
    end
  end

  def user_params
    params.permit(:name, :email, :password)
  end
end
