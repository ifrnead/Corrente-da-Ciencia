class UsuarioController < ApplicationController

  def create_by_location
    ip = request.remote_ip
    lat = params['lat']
    lng = params['lng']

    # Reverse geocoding
    location = get_location lat, lng

    # Separar cidade, uf, país
    tempCityUf = location[2].split '-'
    city = tempCityUf[0]
    uf = tempCityUf[1]
    country = get_country location#location[4]

    @usuario = Usuario.new(ip: ip, latitude: lat, longitude: lng, cidade: city, uf: uf, pais: country)
    if @usuario.save
      respond_to do |format|
        format.json {
          data = { city: city, uf: uf, country: country }
          render json: { data: data }
        }
      end
    else
      respond_to do |format|
        format.json {
          render json: { errors: @usuario.errors.full_messages }, status: 422
        }
      end
    end
  end

  def get_cities
    render json: Cidade.getCities(params)
  end

  def create_by_city
    ip = request.remote_ip
    permited = usuario_params
    puts permited
    city_id = permited[:city]
    uf_id = permited[:uf]

    city = Cidade.find(city_id).nome
    uf = Estado.find(uf_id).sigla

    coordinates = Geocoder.coordinates("#{city}, #{uf}")
    #puts coordinates
    lat = coordinates[0]
    lng = coordinates[1]

    location = get_location lat, lng
    country = get_country location#location[4]

    @usuario = Usuario.new(ip: ip, latitude: lat, longitude: lng, cidade: city, uf: uf, pais: country)
    if @usuario.save
      render json: true
      # respond_to do |format|
      #   format.json {
      #     head :no_content
      #   }
      # end
    end
  end

  private

  def get_location(lat, lng)
    Geocoder.address("#{lat},#{lng}").split ','
  end

  def get_country(location)
    default = 'Brazil'
    location.each do |value|
      if value.include? default
        return default
      end
    end

    location[4]
  end

  def usuario_params
    params.require(:usuario).permit(:city, :uf)
  end
end
