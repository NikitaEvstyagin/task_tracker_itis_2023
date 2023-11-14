class CommentsController < ApplicationController
  
  def show; end

  def new
    @comment = @task.comments.new(comment_params)
    @comment.user = current_user

    
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
