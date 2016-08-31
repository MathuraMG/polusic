class ArticlesController < ApplicationController

  before_filter :authorize, :only => [:create, :edit, :new, :update, :destroy]

  def index
    @articles = Article.all
  end
  def new
    @article = Article.new
  end
  def create
    @articles = Article.create(article_params)
    redirect_to :root
  end
  def show
    @article = Article.find(params[:id])
  end
  def edit
    @article = Article.find(params[:id])
  end
  def update
    @article = Article.find(params[:id])
    @article.update_attributes(article_params)
    redirect_to @article
  end
  def destroy
    Article.find(params[:id]).destroy
    redirect_to :root
  end

  private
  def article_params
    params.require(:article).permit(:item, :content)
  end

  def redirect_if_not_admin
   if !@user.is_admin?
      redirect_to :root
    end
  end
end
