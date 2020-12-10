class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets
  end
  def edit
    @user = User.find(params[:id])
  end
end
