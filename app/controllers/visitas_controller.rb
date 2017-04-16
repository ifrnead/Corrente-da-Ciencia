class VisitasController < ApplicationController
  require 'locator'

  def create_by_location
    visita = Visita.find(params[:id])
    location = Locator.locate("#{params[:lat]}, #{params[:lng]}")

    if visita.update_attributes(latitude: params[:lat], longitude: params[:lng], cidade: location.city, uf: location.state, pais: location.country_code, fonte: Visita::FONTES[:gps])
      render nothing: true
    else
      render status: 422
    end
  end

  def get_cities
    render json: Cidade.buscar(query: params[:q], estado: params[:estado])
  end

  def create_by_city
    visita = Visita.find(params[:id])
    location = Locator.locate("#{params[:city]}, #{params[:uf]}")

    if visita.update_attributes(latitude: location.lat, longitude: location.lng, cidade: params[:city], uf: params[:uf], pais: location.country_code, fonte: Visita::FONTES[:cidade])
      render json: { lat: location.lat, lng: location.lng }
    else
      render status: 422
    end
  end

end
