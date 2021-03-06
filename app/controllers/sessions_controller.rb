class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:name], params[:phone])
    if user
      session[:user_id] = user.id
      redirect_to bulletins_path 
    else
      flash.now.alert = "Invalid name or phone number"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
