class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :set_genre, only: [:search, :search_result]
  before_action :set_time, only: [:index, :show, :search_result, :my_page]
  def index
    @articles = Article.includes(:user)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    redirect_to action: :index if current_user != @article.user
  end

  def update
    if @article.update(article_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    redirect_to action: :index if @article.destroy
  end

  def search
  end

  def search_result
    @articles = if params[:genre_id].present?
                  Genre.find(params[:genre_id]).articles
                else
                  Article.search(params[:keyword])
                end
  end

  def my_page
    @user = User.find(params[:user_id])
    @articles = User.find(params[:user_id]).articles
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def set_genre
    @genres = Genre.where(id: 1..12)
  end

  def set_time
    @current_time = Time.current
  end

  def article_params
    params.require(:article).permit(
      :title, :text, :genre_id,
      :mons1_id, :mons2_id, :mons3_id, :mons4_id, :mons5_id,
      :mons6_id, :mons7_id, :mons8_id, :mons9_id, :mons10_id,
      :mons11_id, :mons12_id, :mons13_id, :mons14_id, :mons15_id,
      :mons16_id, :mons17_id, :mons18_id, :mons19_id, :mons20_id,
      :arc1_id, :arc2_id, :arc3_id, :arc4_id, :arc5_id,
      :arc6_id, :arc7_id, :arc8_id, :arc9_id, :arc10_id,
      :arc11_id, :arc12_id, :arc13_id, :arc14_id, :arc15_id,
      :arc16_id, :arc17_id, :arc18_id, :arc19_id, :arc20_id
    ).merge(user_id: current_user.id)
  end
end
