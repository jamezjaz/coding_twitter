class SessionsController < ApplicationController
  def new
    redirect_to users_path(session[:current_user_id]) if session[:current_user]
  end
    
  def create
    @user = User.find_by(username: params[:username])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = 'You have logged in successfully'
      redirect_to root_path(@user.id)
    else
      flash.now[:alert] = 'Invalid Credentials'
      render 'new'
    end
  end

  def destroy
    session.destroy
    flash[:notice] = 'You have logged out'
    redirect_to new_session_path
  end
end
