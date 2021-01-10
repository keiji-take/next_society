class MessagesController < ApplicationController
  def index
    @message = Message.new
    
  end
  def create
    # .findでkeyのid情報を指定してる
    @room = Room.find(params[:room_id])
    #指定したデータをまとめて新規インスタンスを作成？
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_messages_path(@room)
    else
      @messages = @room.messages.includes(:user)
      render :index
    end
  end
  def show
    
  end
end
