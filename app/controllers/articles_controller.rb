class ArticlesController < ApplicationController
	include ArticlesHelper
	before_action :set_article, only: [:show, :edit, :update, :destroy]

	def index
		@articles = Article.desc
	end

	def show
		@comment = Comment.new
		@comment.article_id = @article.id
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.save
		flash.notice = "You created '#{@article.title}' post! Congrats!"
		redirect_to articles_path
	end

	def edit
	end

	def update
		@article.update(article_params)
		flash.notice = "Article '#{@article.title}' was updated!"
		redirect_to article_path(@article)
	end

	def destroy
		@article.delete
		flash.notice = "You deleted an article '#{@article.title}'"
		redirect_to articles_path
	end

end
