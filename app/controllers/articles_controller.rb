class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # display all of my articles
  def index
    @articles = Article.all
  end

  # display specific article
  def show
    # @article = Article.find(params[:id])
  end

  # create new article
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save!

    redirect_to article_path(@article)
  end

  # update specific article
  def edit
    # @article = Article.find(params[:id])
  end

  def update
    # @article = Article.find(params[:id])
    @article.update(article_params)
    @article.save!

    redirect_to article_path(@article)
  end

  # destroy specific article
  def destroy
    # @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
