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
      @user = User.create(params[:user])
      redirect_to action: "home"
    else 
      
    end
  end

end
