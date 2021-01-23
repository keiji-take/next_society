class MessagesController < ApplicationController
  def index
    if user_signed_in?
      @rooms = Room.includes(:company).where(company_id: current_user.id)
    elsif company_signed_in?
      @rooms = Room.includes(:user).where(company_id: current_company.id)
    end
    @message = Message.new
    @room = Room.find(params[:room_id])
    @messages = @room.messages.includes(:user)
  end
  def create
    # .findでkeyのid情報を指定してる
    @room = Room.find(params[:room_id])
    #指定したデータをまとめて新規インスタンスを作成？
    if user_signed_in?
      @rooms = Room.includes(:company)
      @message = @room.messages.new(user_message_params)
    elsif company_signed_in?
      @rooms = Room.includes(:user)
      @message = @room.messages.new(company_message_params)
    end
    if @message.save
      redirect_to room_messages_path(@room)
    else
      @messages = @room.messages.includes(:user)
      render :index
    end
  end
  def show
    binding.pry
    
  end

  private
  def user_message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id, company_id: @room.company_id)
  end
  def company_message_params
    params.require(:message).permit(:content).merge(company_id: current_company.id, user_id: @room.user_id)
  end

end
