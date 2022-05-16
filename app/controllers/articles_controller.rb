class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end
    def show
        @article = Article.find(params[:id])
        @author = Author.find(params[:authorId]).name
        @tags = @article.tags.all
    end
    
end
