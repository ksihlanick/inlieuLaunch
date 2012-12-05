class Admin::UsersController < ApplicationController
  before_filter :authenticate
  
  def index
    @users = User.all
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

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['HTTP_USER'] && password == ENV['HTTP_PASS']
    end
  end


end