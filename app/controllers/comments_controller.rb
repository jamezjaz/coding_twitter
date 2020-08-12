class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.opinion_id = params[:opinion_id]
    @comment.user = current_user
    
    if @comment.save
      redirect_to opinions_path, notice: 'Comment was successfully created.'
    else
      redirect_to opinions_path, alert: 'Unable to create comment'
    end
  end
    
  private
    
  def comment_params
    params.require(:comment).permit(:content)
  end
end
