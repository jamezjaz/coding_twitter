class LikesController < ApplicationController
  def create
    @like = current_user.likes.build(opinion_id: params[:opinion_id])
    if @like.save
        redirect_to users_path, notice: 'You liked this opinion'
    else
        redirect_to users_path, alert: 'You cannot like this opinion.'
    end
  end

  def destroy
    @like = current_user.likes.find_by(opinion_id: params[:opinion_id])
    if @like.destroy
        redirect_to users_path, alert: 'You unliked this opinion'
    end
  end
end
