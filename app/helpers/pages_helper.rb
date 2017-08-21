require 'uri'

module PagesHelper

  URL = "https://ead.ifrn.edu.br/projetos/correntedaciencia".freeze
  MENSAGEM_PADRAO = "Participe do Corrente da Ciência, um projeto conduzido pelo Campus EaD do IFRN, que visa compreender como e o quão rápido mensagens se propagam em redes sociais e em aplicativos de mensagens. Contribua com o projeto compartilhando a sua localização de forma anônima e segura: #{URL}".freeze
  MENSAGEM_TWITTER = "Participe do Corrente da Ciência, um projeto que visa compreender como e o quão rápido msgs se propagam na Internet:".freeze

  def facebook_share_link
    href = URI.escape("http://www.facebook.com/sharer.php?u=#{URL}")
    "<a href=\"#{href}\" class=\"btn btn-default share-button\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a>".html_safe
  end

  def whatsapp_share_link
    href = URI.escape("whatsapp://send?text=#{MENSAGEM_PADRAO}")
    "<a href=\"#{href}\" class=\"btn btn-default share-button\" target=\"_blank\"><i class=\"fa fa-whatsapp\"></i></a>".html_safe
  end

  def twitter_share_link
    href = URI.escape("https://twitter.com/share?text=#{MENSAGEM_TWITTER}&url=#{URL}")
    "<a href=\"#{href}\" class=\"btn btn-default share-button\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a>".html_safe
  end

  def telegram_share_link
    href = URI.escape("https://telegram.me/share/url?text=#{MENSAGEM_PADRAO}")
    "<a href=\"#{href}\" class=\"btn btn-default share-button\" target=\"_blank\"><i class=\"fa fa-telegram\"></i></a>".html_safe
  end

end
