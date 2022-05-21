class ArticlesController < ApplicationController
  # layout "abc"
   # http_basic_authenticate_with name: "Riya", password: "123"
  before_action :set_article, only: %i[show ]
  def index
    # @articles = Article.paginate(page: params[:page])
    @articles = Article.all
    
    # @articles = Article.order(:title).page params[:page]
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @success = @article.save
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])

  end

  def update
    # byebug
    @article = Article.find(params[:id])
    @success =  @article.update(article_params)

    # if @article.update(article_params)
    #   redirect_to @article
    # else
    #   render :edit, status: :unprocessable_entity
    # end
  end

  def destroy
    puts "================= before delete ================"
    @article = Article.find(params[:id])
    @article.destroy
    puts "================= after delete ================"
    redirect_to articles_path, status: :see_other
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :status)
    end

    def set_article
        @article = Article.find(params[:id])
        # redirect_to root_path
        puts "===============set_article================="
    end
end

  

