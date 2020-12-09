class NextsController < ApplicationController
  before_action :set_action, only: [:show, :edit, :update, :destroy]
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
  def show
  end
  def edit
  end
  def update
    if @tweet.update(tweets_params)
      redirect_to next_path(@tweet.id)
    else
      render :edit
    end
  end
  def destroy
    @tweet.delete
    redirect_to root_path
  end

  private
  def tweets_params
    params.require(:tweet).permit(:title, :occupation_id, :boast).merge(user_id: current_user.id)
  end
  def set_action
    @tweet = Tweet.find(params[:id])
  end
end
