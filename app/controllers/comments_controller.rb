class CommentsController < ApplicationController

  def create
    @art = Article.find(params[:article_id])
    @article = @art.comments.new(comment_params)
    @article.author = current_user.username
    @article.save

    redirect_to article_path(@art)
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
