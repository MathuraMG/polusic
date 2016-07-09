class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def new
    @articles = Article.new
  end
  def create
    @articles = Article.create(article_params)
    redirect_to articles_path
  end
  def show
    @articles = Article.find(params[:id])
  end
  def edit
    @articles = Article.find(params[:id])
  end
  def update
    @article = Article.find(params[:id])
    @article.update_attributes(article_params)
    redirect_to @article
  end

  private
  def article_params
    params.require(:article).permit(:item, :content)
  end
end
