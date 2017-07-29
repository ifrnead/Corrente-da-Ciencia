module PagesHelper

  URL = "https://ead.ifrn.edu.br/correntedaciencia".freeze
  MENSAGEM_PADRAO = "Participe%20do%20projeto%20Corrente%20da%20Ciência%20você%20também!%20#{URL}".freeze
  MENSAGEM_TWITTER = "Participe%20do%20projeto%20Corrente%20da%20Ciência%20você%20também!&amp;hashtags=IFRN,EAD,CorrenteDaCiencia".freeze

  def facebook_share_link
    "<a href=\"http://www.facebook.com/sharer.php?u=#{URL}\" class=\"btn btn-default share-button\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a>".html_safe
  end

  def whatsapp_share_link
    "<a href=\"whatsapp://send?text=\" class=\"btn btn-default share-button\" target=\"_blank\"><i class=\"fa fa-whatsapp\"></i></a>".html_safe
  end

  def twitter_share_link
    "<a href=\"https://twitter.com/share?url=#{URL}&amp;text=#{MENSAGEM_TWITTER}\" class=\"btn btn-default share-button\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a>".html_safe
  end

  def telegram_share_link
    "<a href=\"https://telegram.me/share/url?url=#{URL}&text=#{MENSAGEM_PADRAO}\" class=\"btn btn-default share-button\" target=\"_blank\"><i class=\"fa fa-telegram\"></i></a>".html_safe
  end

end
