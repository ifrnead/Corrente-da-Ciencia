class MessagesController < ApplicationController
  caches_page :new

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to fix_path(contact_path), notice: 'Sua mensagem foi enviada com sucesso!'
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end
end
