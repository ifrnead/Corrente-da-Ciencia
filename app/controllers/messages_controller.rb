class MessagesController < ApplicationController
  caches_page :new

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      flash[:success] = 'Sua mensagem foi enviada com sucesso!'
      redirect_to fix_path(contact_path)
    else
      flash[:danger] = 'Um erro ocorreu ao enviar esta mensagem.'
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end
end
