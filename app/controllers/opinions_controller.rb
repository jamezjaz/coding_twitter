class OpinionsController < ApplicationController
  def index
    @opinions = Opinion.new
    # @opinion = tweets
  end

  def new
    @opinions =Opinion.new
  end

  def create
    @opinions = Opinion.new(opinion_params)
    
    if @opinions.save
      flash[:notice] = 'Tweet Created'
      redirect_to new_opinion_path
    else
      flash[:notice] = 'Unable to create tweet'
      redirect_to opinions_path
    end
  end

  private

  def opinion_params
    params.permit(:text)
  end

  # def tweets
  #   @opinions = current_user.friends_and_own_posts
  # end
end
