class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article_deck = ArticleDeck.new
  end
end
