class ContactMailer < ApplicationMailer
  default to: 'correntedaciencia@ifrn.edu.br'
  default from: 'correntedaciencia@ifrn.edu.br'

  def new_email(message)
    @message = message
    mail subject: "[Corrente da Ciência] Mensagem de: #{@message.name}"
  end
end
