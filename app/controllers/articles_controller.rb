class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: :new
  def index
    @articles = Article.all
  end

  def new
    @article_deck = ArticleDeck.new
  end

  def create
    @article_deck = ArticleDeck.new(article_params)
    if @article_deck.valid?
      @article_deck.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    redirect_to action: :index if @article.destroy
  end

  private

  def article_params
    params.require(:article_deck).permit(
      :title, :text, :genre, :mons1, :mons2, :mons3, :mons4, :mons5, :mons6, :mons7, :mons8, :mons9, :mons10,
      :mons11, :mons12, :mons13, :mons14, :mons15, :mons16, :mons17, :mons18, :mons19, :mons20,
      :arc1, :arc2, :arc3, :arc4, :arc5, :arc6, :arc7, :arc8, :arc9, :arc10,
      :arc11, :arc12, :arc13, :arc14, :arc15, :arc16, :arc17, :arc18, :arc19, :arc20
    ).merge(user_id: current_user.id)
  end
end
