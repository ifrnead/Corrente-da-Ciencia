class VisitasController < ApplicationController

  def create_by_location
    visita = Visita.find(params[:id])
    location = Geokit::Geocoders::GoogleGeocoder.geocode("#{params[:lat]}, #{params[:lng]}")

    if visita.update_attributes(latitude: params[:lat], longitude: params[:lng], cidade: location.city, uf: location.state, pais: location.country_code, fonte: Visita::FONTES[:gps])
      render nothing: true
    else
      render status: 422
    end
  end

  def create_by_city
    visita = Visita.find(params[:id])
    location = Geokit::Geocoders::GoogleGeocoder.geocode("#{params[:cidade]}")
    
    if visita.update_attributes(latitude: location.lat, longitude: location.lng, cidade: location.district, uf: location.province, pais: location.country_code, fonte: Visita::FONTES[:cidade])
      render json: { lat: location.lat, lng: location.lng }
    else
      render status: 422
    end
  end

end
