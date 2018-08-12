class LikesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    unless @article.iine?(current_user)
      @article.iine(current_user)
      @article.reload
      respond_to do |format|
        format.html {redirect_to request.referrer || root_url}
        # format.js
      end
    end
  end

  def destroy
    @article = Like.find(params[:id]).article
    if @article.iine?(current_user)
      @article.uniine(current_user)
      @article.reload
      respond_to do |format|
        format.html {redirect_to request.referrer || root_url}
        # format.js
      end
    end
  end
end
