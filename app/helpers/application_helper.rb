module ApplicationHelper

  def home_link
    "<a href=\"#{ home_path }\" class=\"btn btn-default\"><i class=\"fa fa-home\" ></i><br>Home</a>".html_safe
  end

  def about_link
    "<a href=\"#{ what_path }\" class=\"btn btn-default\" ><i class=\"fa fa-file-text\"></i><br>Sobre</a>".html_safe
  end

  def team_link
    "<a href=\"#{ who_path }\" class=\"btn btn-default\"><i class=\"fa fa-users\"></i><br>Equipe</a>".html_safe
  end

  def contact_link
    "<a href=\"#{ contact_path }\" class=\"btn btn-default\"><i class=\"fa fa-envelope\"></i><br>Contato</a>".html_safe
  end

end
