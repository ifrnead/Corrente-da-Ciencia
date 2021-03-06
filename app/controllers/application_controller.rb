class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_raven_context

  def fix_path(path)
    if Rails.env.production?
      "/projetos/correntedaciencia#{path}"
    else
      path
    end
  end

  private

  def set_raven_context
    Raven.user_context(id: session[:visita_id]) # or anything else in session
    Raven.extra_context(params: params.to_unsafe_h, url: request.url)
  end
end
