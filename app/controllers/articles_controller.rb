class ArticlesController < ApplicationController
  def show
    @article = Article.find_by(id: params[:id])
    @comments = Comment.where(article_id: params[:id])
  end

  def show_by_grade
  end
end