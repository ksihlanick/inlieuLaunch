class UsersController < ApplicationController
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
end
