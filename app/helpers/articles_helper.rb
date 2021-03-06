module ArticlesHelper

	def article_params
		params.require(:article).permit(:title, :body, :image)
	end

	def set_article
		@article = Article.find(params[:id])
	end

end
