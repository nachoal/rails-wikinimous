class ArticlesController < ApplicationController
  # GET '/articles' ✅
  def index
    @articles = Article.all
  end

  # GET '/articles/:id' ✅
  def show
    @article = Article.find(params[:id])
  end

  # GET '/articles/edit' ✅
  def edit
    @article = Article.find(params[:id])
  end

  # PATCH '/articles/:id' ✅
  def update
    @article = Article.find(params[:id])

    @article.update(article_params)

    redirect_to @article
  end

  # GET '/articles/new' ✅
  def new
   @article = Article.new
  end

  # POST '/articles/' 
  def create
    # Generate a new article with the params
    @article = Article.new(article_params)
    # Save that article 🔥
    @article.save

    redirect_to @article
  end

  # DELETE '/articles/:id' 🔥
  def destroy
    @article = Article.find(params[:id])

    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
