class NicesController < ApplicationController
  before_action :set_article, only: [:create, :destroy]
  def create
    @nice = current_user.nices.build(article_id: params[:article_id])
    @nice.save
  end

  def destroy
    @nice = Nice.find_by(user_id: current_user.id, article_id:  params[:article_id])
    @nice.destroy
  end

  private
  def set_article
    @article = Article.find(params[:article_id])
  end
end
