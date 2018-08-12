class LikesController < ApplicationController
  # before_action :logged_in

  def create
    @article = Article.find(params[:article_id])
    @article.iine(current_user)
  end

  def destroy
    @article = Like.find(params[:id]).article
    @article.uniine(current_user)
  end
end
