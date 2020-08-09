class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  # def authenticate
  #   flash[:alert] = "You need to login first!"
  #   redirect_to new_session_path unless current_user
  # end
  def authenticate
    if !current_user
      flash[:alert] = "You need to login first!"
      redirect_to new_session_path
    end
  end
end
