module PagesHelper

  def facebook_share_link
    "<a href=\"http://www.facebook.com/sharer.php?u=http://ead.ifrn.edu.br/correntedaciencia\" class=\"share-button\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a>".html_safe
  end

  def whatsapp_share_link
    "<a href=\"whatsapp://send?text=Participe%20do%20projeto%20Corrente%20da%20Ciência%20você%20também!%20<%= home_url %>\" class=\"share-button\" target=\"_blank\"><i class=\"fa fa-whatsapp\"></i></a>".html_safe
  end

  def twitter_share_link
    "<a href=\"https://twitter.com/share?url=<%= home_url %>&amp;text=Participe%20do%20projeto%20Corrente%20da%20Ciência%20você%20também!&amp;hashtags=IFRN,TCC,CorrenteDaCiencia\" class=\"share-button\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a>".html_safe
  end

  def telegram_share_link
    "<a href=\"https://telegram.me/share/url?url=<%= home_url %>&text=Participe%20do%20projeto%20Corrente%20da%20Ciência%20você%20também!\" class=\"share-button\" target=\"_blank\"><i class=\"fa fa-telegram\"></i></a>".html_safe
  end

end
