class MessagesController < ApplicationController
  before_action :set_codealong

  def new
    @message = @codealong.messages.new
  end

  def create
    @message = @codealong.messages.new(message_params)
    @message.user = current_user

    if @message.save
      redirect_to :back
    else
      render :new
    end
  end

  def update

    if @message.update_attributes(params.require(:codealong).permit(:content, :user_id, :codealong_id))
      redirect_to codealong_path
    else
      render :edit
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to :back
  end

  private
  def set_codealong
    @codealong = Codealong.find(params[:codealong_id])
  end

  def message_params
    params.require(:message).permit(:content, :user_id, :codealong_id)
  end

end
