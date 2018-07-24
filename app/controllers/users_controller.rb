class UsersController < ApplicationController

  def home
    @username = @User.find(session[:id]).name
  end

  def login
  end

end
