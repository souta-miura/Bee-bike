class User::SearchesController < ApplicationController

  def search_result
	@model = params[:model]
	@content = params[:content]
	@method = params[:method]
	if @model == 'item'
	  @records = Item.search_for(@content, @method)
	elsif @model == 'user'
	  @records = User.search_for(@content, @method)
	end
  end
end
