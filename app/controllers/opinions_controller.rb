class OpinionsController < ApplicationController
  def index
    @opinion = Opinion.new
  end

  def create
    @opinion = Opinion.new(opinion_params)
    
    if @opinion.save
      flash[:notice] = 'Tweet Created'
      redirect_to root_path
    else
      flash[:notice] = 'Unable to create tweet'
      redirect_to opinions_path
    end
  end

  private

  def opinion_params
    params.require(:opinions).permit(:text)
  end

  def tweets
    @opinions = current_user.friends_and_own_posts
  end
end
