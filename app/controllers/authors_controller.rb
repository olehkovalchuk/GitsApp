class AuthorsController < ApplicationController
    before_action :set_page, only: [:index, :show]
    # before_action :set_article_page, only: [:index]
    def index
        @authors = Author.all
        @authorsOrder = Author.order(created_at: :desc).limit(6).offset(@page.to_i * 6)
    end
    def show
        @author = Author.find(params[:id])
        @articles = @author.articles.all
        @articlesOrder = @author.articles.order(created_at: :desc).limit(6).offset(@page.to_i * 6)
    end

    private

    def set_page
        @page = params[:page] || 0
    end
end
