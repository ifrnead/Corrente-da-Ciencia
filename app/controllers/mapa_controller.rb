class MapaController < ApplicationController
  def index
    @ip = request.remote_ip
    #location = Geokit::Geocoders::IpGeocoder.geocode(@ip)
    #if location.success
  end

  def location
    ip = request.remote_ip

    lat = params['lat']
    lng = params['lng']

    # Reverse geocoding
    location = Geocoder.address("#{lat},#{lng}")
    location = location.split ','

    # Separar cidade, uf, país
    city = location[2]
    country = location[4]

    # TODO Armazenar cidade, uf, país
    @usuario = Usuario.new(ip: ip, latitude: lat, longitude: lng)
    if @usuario.save

    end

    respond_to do |format|
      format.json {
        #head :ok
        data = { city: city, country: country }
        render json: { :data => data }
      }
    end
  end
end
