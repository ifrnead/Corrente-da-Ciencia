module ApplicationHelper

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
