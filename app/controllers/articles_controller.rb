class ArticlesController < ApplicationController
  def show
    @article = Article.find_by(id: params[:id])
    # DBを作成したらコメントアウトを消す
    # child_id = @article.child_id
    # @child = Child.find_by(id: child_id)
    # user_id = child.user_id
    # @user = User.find_by(id: user_id)
  end
end
