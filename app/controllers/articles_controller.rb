class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :destroy, :show]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
    redirect_to root_path
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to root_path
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  def show
  end

  private
  def article_params
    params.require(:article).permit(:title,:text).merge(user_id: current_user.id)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
