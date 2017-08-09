class PagesController < ApplicationController
  caches_page :thanks, :what, :who

  def index
    location = Geokit::Geocoders::GoogleGeocoder.geocode(request.remote_ip)

    @visita = Visita.create(ip: request.remote_ip, latitude: location.lat, longitude: location.lng, cidade: location.city, uf: location.state, pais: location.country_code, fonte: Visita::FONTES[:ip])
    session[:visita_id] = @visita.id
  end

  def where
    if session[:visita_id]
      @visita = Visita.find(session[:visita_id])
    else
      redirect_to fix_path(home_path)
    end
  end

  def thanks

  end

  def what

  end

  def who

  end
end
