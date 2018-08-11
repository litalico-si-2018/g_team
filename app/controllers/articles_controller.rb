class ArticlesController < ApplicationController
  def show
    @article = Article.find_by(id: params[:id])
    child_id = @article.child_id
    child = Child.find_by(id: child_id)
    user_id = child.user_id
    @user = User.find_by(id: user_id)

    @comments = Comment.where(article_id: params[:id])
  end
end
