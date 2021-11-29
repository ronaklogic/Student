class SessionsController < ApplicationController

  def index
  end 

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.password_digest == params[:password_digest]
      session[:user_id] = @user.id
      redirect_to states_path
    else
      flash.alert = "Password is incorrect , please check the password"
    
      render "new"
    end  
  end  

  def destroy
    session[:user_id] = nil
    redirect_to users_path, notice: "Logged out!"
  end
end
