class SessionsController < ApplicationController

  def new
  end

  def create
    #byebug
    return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
session[:user_id] = User.find_by(name: params[:user][:name]).id
redirect_to controller: 'users', action: 'home'
  end


end
