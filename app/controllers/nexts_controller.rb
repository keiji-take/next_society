class NextsController < ApplicationController

  def index
    @tweets = Tweet.includes(:user).order('created_at DESC')
  end
  def new
    @tweet = Tweet.new
  end
  def create
    @tweet = Tweet.new(tweets_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def tweets_params
    params.require(:tweet).permit(:title, :occupation_id, :boast).merge(user_id: current_user.id)
  end
end
