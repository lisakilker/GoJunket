class SearchController < ApplicationController

	def new
    @search = Search.new
  end

  def results
    if params
      search = Search.create
      @users = search.find_users(params)
    end
  end

  def show
	  @search = Search.find(params)
	  @users = @search.users
	end
end 

