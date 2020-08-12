class FollowingsController < ApplicationController
  def create
    @following = current_user.followings.build(followed_id: params[:followed_id])
    if @following.save
        flash[:notice] = 'Followed successfully'
    else
        flash[:alert] = 'Followed unsuccessfully'
    end
    redirect_to users_path
  end

  def destroy
    @following = current_user.followings.find_by(followed_id: params[:followed_id])
    if @following.present?
      @following.destroy
      flash[:notice] = 'Unfollow successfull'
    else
      flash[:alert] = 'Unfollow unsuccessfull'
    end
    redirect_to users_path
  end
end
