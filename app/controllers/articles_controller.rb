class ArticlesController < ApplicationController
  def show
    @article = Article.find_by(id: params[:id])
    @comments = Comment.where(article_id: params[:id])
  end

  def show_by_grade
    @g = params[:id]
    @article_filtered = Article.where(grade: @g)
  end

  def show_by_subject
    id = params[:id]
    @s = Subject.find_by(id: id)
    @article_filtered = Article.where(subject_id: @s)
  end
end
