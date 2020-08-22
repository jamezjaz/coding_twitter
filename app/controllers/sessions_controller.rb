class SessionsController < ApplicationController
  def new
    redirect_to users_path(session[:current_user_id]) if session[:current_user]
  end

  def create
    @user = User.find_by(session_params)
    if @user
      session[:user_id] = @user.id
      flash[:notice] = 'You have logged in successfully'
      redirect_to users_path
    else
      flash.now[:alert] = 'Invalid Credentials'
      render 'new'
    end
  end

  def destroy
    session.destroy
    flash[:alert] = 'You have logged out'
    redirect_to new_session_path
  end

  private

  def session_params
    params.permit(:username)
  end
end
