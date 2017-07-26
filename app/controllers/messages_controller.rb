class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      ContactMailer.new_email(@message).deliver # Send email
      flash[:success] = 'Sua mensagem foi enviada com sucesso!'
      redirect_to contact_path
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
