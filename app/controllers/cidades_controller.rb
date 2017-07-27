class CidadesController < ApplicationController

  def buscar
    options = {
      key: Rails.application.secrets.google_api_key,
      language: 'pt-BR',
      types: '(cities)',
      input: params[:cidade]
    }
    response = RestClient.get("https://maps.googleapis.com/maps/api/place/autocomplete/json", { params: options })
    json_response = JSON.parse(response)
    cidades = Array.new
    if json_response['status'] == "OK"
      json_response['predictions'].each do |prediction|
        cidades << { text: prediction["description"], id: prediction["description"] }
      end
    end
    render json: cidades
  end

end
