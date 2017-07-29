module ApplicationHelper

  def open_graph_meta_tags
    tags = "<meta property=\"og:url\" content=\"https://ead.ifrn.edu.br/correntedaciencia\" />"
    tags += "<meta property=\"og:type\" content=\"website\" />"
    tags += "<meta property=\"og:title\" content=\"Corrente da Ciência\" />"
    tags += "<meta property=\"og:description\" content=\"O Corrente da Ciência, desenvolvido pelo Campus EaD do IFRN, é um projeto de pesquisa que visa compreender como e quão rápido mensagens se propagam em aplicativos de mensagens e redes sociais.\" />"
    tags += "<meta property=\"og:image\" content=\"#{image_url('og_image.png')}\" />"
    tags.html_safe
  end

  def home_link
    "<a href=\"#{ home_path }\"><i class=\"fa fa-home\"></i> Home</a>".html_safe
  end

  def about_link
    "<a href=\"#{ what_path }\"><i class=\"fa fa-file-text\"></i> O que é?</a>".html_safe
  end

  def team_link
    "<a href=\"#{ who_path }\"><i class=\"fa fa-users\"></i> Quem somos?</a>".html_safe
  end

  def contact_link
    "<a href=\"#{ contact_path }\"><i class=\"fa fa-envelope\"></i> Contato</a>".html_safe
  end

end
