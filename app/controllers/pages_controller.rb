class PagesController < ApplicationController
  def index
    @page_active = __method__
    @ip = request.remote_ip
    #location = Geokit::Geocoders::IpGeocoder.geocode(@ip)
    #if location.success
  end

  def what
    @page_active = __method__
  end

  def who
    @page_active = __method__
  end

  def results
    @page_active = __method__
    @users = Usuario.all
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
  end

  def contact
    @page_active = __method__

    # lat = params['name']
    # lng = params['email']
    # lng = params['phone']
    # lng = params['message']
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
