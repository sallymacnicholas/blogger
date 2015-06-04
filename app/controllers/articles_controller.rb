class ArticlesController < ApplicationController
  include ArticlesHelper

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    flash.notice = "'#{@article.title}' created!!"
    redirect_to @article
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])

  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    flash.notice = "Article '#{@article.title}' Updated!"
    redirect_to @article
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    flash.notice = "Yo bro, you just deleted the article titled: '#{@article.title}'. Hope you meant to do that"
    redirect_to articles_path
  end
end
