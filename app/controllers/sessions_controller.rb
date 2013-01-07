class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:name], params[:phone]
    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => " Logged in !"
    else
      flash.now.alert = "Invalid name or phone number"
      render "new"
    end
  end
end
