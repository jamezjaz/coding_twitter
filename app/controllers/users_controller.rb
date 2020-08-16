class UsersController < ApplicationController
  before_action :authenticate, only: %i[index show]

  def index
    @user = User.all.includes(:opinions, :likes)
    @opinions = Opinion.all.includes(:likes, user: [:likes])
    @follow_users = User.where(id: (@user.ids - current_user.following_users.ids)).order(created_at: :desc)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Registered successfully'
      session[:user_id] = @user.id
      flash[:notice] = 'You have logged in successfully'
      redirect_to users_path
    else
      render 'new'
    end
  end

  def show
    @user = User.includes(:opinions, opinions: :likes).find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :fullname, :photo, :coverimage)
  end
end
