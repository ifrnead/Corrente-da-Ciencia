class MapaController < ApplicationController
  def index
    @ip = request.remote_ip
    location = Geokit::Geocoders::IpGeocoder.geocode(@ip)
    if location.success
      @lat = location.lat
      @long = location.lng
      @city = location.city
      @uf = location.state_name
      @country = location.country
      @usuario = Usuario.new(ip: @ip, latitude: @lat, longitude: @long)
      if @usuario.save

      end
    end
  end
end
