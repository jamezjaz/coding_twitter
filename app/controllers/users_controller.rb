class UsersController < ApplicationController
  before_action :authenticate, only: %i[index show]

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  # def create
  #   @user = User.new(user_params)
  #   redirect_to users_path(@user) if @user.save
  # end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = 'Registered successfully, please Login'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.permit(:username, :fullname, :photo, :coverimage)
  end
end
