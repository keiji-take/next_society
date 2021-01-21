class RoomsController < ApplicationController
  def index
    # if user_signed_in?
    #   @room = Room.find(params[:user_id])

    # elsif
    #   @room = Room.find(params[:company_id])
      
    # end
  end
  def show
    # @room = Room.find(params[:id])
    # @message = Message.new
    # @messages = @room.messages
    # if user_signed_in?
    #   if @room.user.id == current_user.id
    #     @company = @room.company
    #   else
    #     redirect_to "#"
    #   end
    # elsif company_signed_in?
    #   if @room.company.id == currrent_company.id
    #     @user = @room.user
    #   else
    #     redirect_to "#"
    #   end
    # else
    #   redirect_to "/"
    # end
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
      redirect_to :action => "show", :id => @room.id
    else
      redirect_to "/"
    end
  end
  
  private
  def room_company_params
    params.require(:room).permit(:user_id)
  end
end
