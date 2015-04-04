class ArticlesController < ApplicationController
	include ArticlesHelper
	before_action :set_article, only: [:show, :edit, :update, :destroy]

	def index
		@articles = Article.all
	end

	def show
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to articles_path
	end

	def edit
	end

	def update
		@article.update(article_params)
		logger.debug "Post was updated..."
		redirect_to article_path(@article)
	end

	def destroy
		@article.delete
		logger.debug "Post was deleted and now redirect.."
		redirect_to articles_path
	end

end
