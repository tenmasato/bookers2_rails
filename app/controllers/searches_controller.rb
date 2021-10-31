class SearchesController < ApplicationController
  before_action :authenticate_user!


	def search
	  #選択したmodelの値を@modelに代入。
		@model = params[:model]
		 #検索ワードを＠contentに代入。
		@content = params[:content]
		 #選択した検索方法の値を@modelに代入。
		@method = params[:method]
		 #選択したモデルがuserだったら
		if @model == 'user'
			@records = User.search_for(@content, @method)
		else
			@records = Book.search_for(@content, @method)
		end
	end
end

