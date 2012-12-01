class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new(params[:user])
  	if @user.save
  		redirect_to "http://inlieugiving.com/join"
  	else
  		render 'new'
  	end
  end

  def new
  	@user = User.new
  end

  def edit

  end

  def show
    @user = User.find(params[:id])
  end

  def update

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to @user
  end
end
