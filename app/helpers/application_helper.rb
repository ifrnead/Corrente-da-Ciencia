module ApplicationHelper

  def fix_path(path)
    if Rails.env.production?
      "/projetos/correntedaciencia#{path}"
    else
      path
    end
  end

  def open_graph_meta_tags
    tags = "<meta property=\"og:url\" content=\"https://ead.ifrn.edu.br/projetos/correntedaciencia\" />"
    tags += "<meta property=\"og:type\" content=\"website\" />"
    tags += "<meta property=\"og:title\" content=\"Corrente da Ciência\" />"
    tags += "<meta property=\"og:description\" content=\"O Corrente da Ciência, desenvolvido pelo Campus EaD do IFRN, é um projeto de pesquisa que visa compreender como e quão rápido mensagens se propagam em aplicativos de mensagens e redes sociais.\" />"
    tags += "<meta property=\"og:image\" content=\"#{image_url('og-image.png')}\" />"
    tags.html_safe
  end

  def home_link
    "<a href=\"#{ fix_path(home_path) }\"><i class=\"fa fa-home\"></i> Home</a>".html_safe
  end

  def about_link
    "<a href=\"#{ fix_path(what_path) }\"><i class=\"fa fa-file-text\"></i> O que é?</a>".html_safe
  end

  def team_link
    "<a href=\"#{ fix_path(who_path) }\"><i class=\"fa fa-users\"></i> Quem somos?</a>".html_safe
  end

  def contact_link
    "<a href=\"#{ fix_path(contact_path) }\"><i class=\"fa fa-envelope\"></i> Contato</a>".html_safe
  end

end
