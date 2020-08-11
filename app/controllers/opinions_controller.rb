class OpinionsController < ApplicationController
  before_action :authenticate
  def create
    @opinion = current_user.opinions.build(opinion_params)
    if @opinion.save
      flash[:notice] = 'Your tweet has been posted.'
    else
      flash[:alert] = 'Your tweet cannot be created.'
    end
    redirect_to users_path
  end

  private

  def opinion_params
    params.permit(:text)
  end
end
