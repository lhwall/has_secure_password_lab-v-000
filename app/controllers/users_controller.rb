class UsersController < ApplicationController

  def home
    @username = @User.find(session[:id]).name
  end

  def login
  end

  def new
  end

  def create
    if params[:user][:password] == params[:user][:password_confirmation]
      @user = User.create(user_params)
      redirect_to action: "home"
    else
       redirect_to action: "login"
    end
  end

  private 
  def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
    
end
