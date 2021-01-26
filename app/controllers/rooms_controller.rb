class RoomsController < ApplicationController
  def index
    if user_signed_in?
      @rooms = Room.includes(:company).where(user_id: current_user.id)
    elsif company_signed_in?
      @rooms = Room.includes(:user).where(company_id: current_company.id)
    end
  end
  def create
    if user_signed_in?

    elsif company_signed_in?
      @room = Room.new(room_company_params)
      @room.company_id = current_company.id
    else
      
      redirect_to root_path
    end
    if @room.save 
      redirect_to :action => "index", :id => @room.id
    else
      redirect_to "/"
    end
  end
  
  private
  def room_company_params
    params.require(:room).permit(:user_id)
  end
end
