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

  private
  def article_params
    params.require(:article).permit(:item)
  end
end
