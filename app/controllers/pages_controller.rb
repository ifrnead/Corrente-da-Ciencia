class PagesController < ApplicationController

  def index
    location = Geokit::Geocoders::GoogleGeocoder.geocode(request.remote_ip)

    @visita = Visita.create(ip: request.remote_ip, latitude: location.lat, longitude: location.lng, cidade: location.city, uf: location.state, pais: location.country_code, fonte: Visita::FONTES[:ip])
  end

  def where
    @visita = Visita.find(visita_params[:id])
  end

  def thanks

  end

  def what

  end

  def who

  end

  def results
    @visitas = Visita.all
  end

  def visita_params
    params.require(:visita).permit(:id)
  end
end
