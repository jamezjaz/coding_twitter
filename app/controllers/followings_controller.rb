class FollowingsController < ApplicationController
  def create
    @following = current_user.followings.build(followed_id: params[:followed_id])
    # puts @following
    if @following.save
        flash[:notice] = 'Followed successfully'
    else
        flash[:alert] = 'Followed unsuccessfully'
    end
    redirect_to users_path
  end

  # def create
  #   user = User.find(params[:followed_id])
  #   current_user.follow(user)
  #   redirect_to users_path
  # end

  # def destroy
  #   current_user.unfollow(params[:id])
  #   redirect_to users_path
  # end
end
