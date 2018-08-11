class StaticPagesController < ApplicationController
  def home
    articles = Article.all

    # 協調性フィルタ
    @lists = articles
  end

  def help
  end
end
