class FollowingsController < ApplicationController
  def create
    @following = current_user.followings.build(following_params)
    if @following.save
      flash[:notice] = 'Followed successfully'
    else
      flash[:alert] = 'Followed unsuccessfully'
    end
    redirect_to users_path
  end

  def destroy
    @following = current_user.followings.find_by(following_params)
    if @following.present?
      @following.destroy
      flash[:notice] = 'Unfollow successfull'
    else
      flash[:alert] = 'Unfollow unsuccessfull'
    end
    redirect_to users_path
  end

  private

  def following_params
    params.permit(:followed_id)
  end
end
