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

  def show
    @user = User.find_by_id(params[:id])
  end

  def index
    @users = User.all
    if params[:search]
      @users = User.search(params[:search]).shuffle
    else
      @users = User.all.shuffle
    end
  end

   def sender
      @user = User.find(params[:id])
    end

    def recipient
      @user = User.find(params[:id])
    end
end


