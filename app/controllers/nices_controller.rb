class NicesController < ApplicationController
  before_action :set_article

  def create
    @nice = Nice.new(user_id: current_user.id,  article_id: @article.id)
    @nice.save
  end

  def destroy
    @nice = Nice.find_by(user_id: current_user.id, article_id:  @article.id)
    @nice.destroy
  end

  private

  def set_article
    #@article = Article.find_by(id: params[:article_id])
    @article = Article.find(params[:id])
  end
end
