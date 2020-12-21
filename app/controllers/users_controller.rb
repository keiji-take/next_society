class UsersController < ApplicationController
  before_action :user_set, only: [:show, :edit]
  def show
    @tweets = @user.tweets
  end
  def edit
  end
  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end
  private
  def user_params
    params.require(:user).permit(:name, :birth_date, :gender_id, :occupation_id, :tel_number, :location_id, :profile, :image)
  end
  def user_set
    @user = User.find(params[:id])
  end
end
