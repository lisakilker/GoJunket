class UsersController < ApplicationController
	 
	before_action :authenticate_user!

  def profile
    @user = current_user
    render 'users/profile'
  end

  def edit
  	@user = current_user
  	render 'users/edit'
  end

  def home
    @user = current_user
    render :home
  end
end
