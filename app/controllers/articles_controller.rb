class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :destroy, :show]

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
    params.require(:article).permit(:title,:text)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
