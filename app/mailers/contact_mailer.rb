class ContactMailer < ApplicationMailer
  default from: 'No Reply <noreply@yourdomain.com>'
  default to: 'Your Name <your.email@yourdomain.com>'

  def new_email(message)
    @message = message
    mail subject: "[Corrente da Ciência] Mensagem de: #{@message.name}"
  end
end
