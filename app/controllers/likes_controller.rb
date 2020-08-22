class LikesController < ApplicationController
  def create
    @like = current_user.likes.build(like_params)
    if @like.save
      redirect_to users_path, notice: 'You liked this opinion'
    else
      redirect_to users_path, alert: 'You cannot like this opinion.'
    end
  end

  def destroy
    @like = current_user.likes.find_by(like_params)
    redirect_to users_path, alert: 'You unliked this opinion' if @like.destroy
  end

  private

  def like_params
    params.permit(:opinion_id)
  end
end
