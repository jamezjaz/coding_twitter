class FollowingsController < ApplicationController
  def create
    fail
    @following = current_user.followings.build(followed_id: params[:followed_id])
    puts "Hello 8888888 #{current_user.id}"
    puts "Hello 4444444 #{params[:followed_id]}"
    puts @following
    if @following.save
        flash[:notice] = 'Followed successfully'
    else
        flash[:alert] = 'Followed unsuccessfully'
    end
    redirect_to users_path
  end
end
