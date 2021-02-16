class MessagesController < ApplicationController
  def index
    @room = Room.find(params[:room_id])
    if user_signed_in?
      @rooms = Room.includes(:company).where(user_id: current_user.id)
    elsif company_signed_in?
      @rooms = Room.includes(:user).where(company_id: current_company.id)
    end
    @message = Message.new
    @messages = @room.messages
  end
  def create
    # urlを指定
    @room = Room.find(params[:room_id])
    if user_signed_in?
      @message = @room.messages.new(message_params)
      @message.is_user =true
    elsif company_signed_in?
      @message = @room.messages.new(message_params)
      @message.is_user = false
    end
    if @message.save
      redirect_to room_messages_path(@room)
    else
      render :index
    end
  end
  def checked
    binding.pry
    @room = Room.find(params[:room_id])
    if @room.checked
      @room.update(checked: false)
    else
      @room.update(checked: true)
    end
    item = Room.find(params[:room_id])
    render json: { message: item }
  end

  private
  def message_params
    params.require(:message).permit(:content)
  end

end
