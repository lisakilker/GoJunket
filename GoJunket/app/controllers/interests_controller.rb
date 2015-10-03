class InterestsController < ApplicationController

	before_action :authenticate_user!

	def new
		@user = current_user
		@interest = Interest.new
	end

	def edit
	end
end
