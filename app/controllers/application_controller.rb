class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= User.includes(:opinions, opinions: :likes).find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def authenticate
    flash[:alert] = 'You need to login first!' unless current_user
    redirect_to new_session_path unless current_user
  end
end
