class FollowingsController < ApplicationController
  def create
    @following = current_user.followings.build(followed_id: params[:followed_id])
    puts "curehjsd #{current_user.id}"
    puts "curehjsd #{params[:followed_id]}"
    puts @following
    if @following.save
        flash[:notice] = 'Followed successfully'
    else
        flash[:alert] = 'Followed unsuccessfully'
    end
    redirect_to users_path
  end
end
