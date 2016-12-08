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
    tempCityUf = location[2].split '-'
    city = tempCityUf[0]
    uf = tempCityUf[1]
    country = location[4]

    @usuario = Usuario.new(ip: ip, latitude: lat, longitude: lng, cidade: city, uf: uf, pais: country)
    if @usuario.save
      respond_to do |format|
        format.json {
          #head :ok
          data = { city: city, uf: uf, country: country }
          render json: { :data => data }
        }
      end
    else
      respond_to do |format|
        format.json {
          render :json => { :errors => @usuario.errors.full_messages }, :status => 422
        }
      end
    end
  end
end
