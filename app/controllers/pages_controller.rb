class PagesController < ApplicationController

  def index
    @page_active = __method__
    location = Geokit::Geocoders::GoogleGeocoder.geocode(request.remote_ip)

    @visita = Visita.create(ip: request.remote_ip, latitude: location.lat, longitude: location.lng, cidade: location.city, uf: location.state, pais: location.country_code, fonte: Visita::FONTES[:ip])
  end

  def what
    @page_active = __method__
  end

  def who
    @page_active = __method__
  end

  def results
    @page_active = __method__
    @visitas = Visita.all
  end
end
