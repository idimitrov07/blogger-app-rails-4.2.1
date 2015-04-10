class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.photo_id = params[:photo_id]

    @comment.save
    if @comment.article_id
      path_comment = article_path(@comment.article)
    else
      path_comment = photo_path(@comment.photo)
    end
    redirect_to path_comment
  end


  private
  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end
end
