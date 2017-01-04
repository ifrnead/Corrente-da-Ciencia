class Cidade < ActiveRecord::Base
  belongs_to :estado

  def self.getCities(params)
    cidades = Array.new
    self.where("cidades.estado_id = '#{params[:estado_id]}' AND cidades.nome LIKE '%#{params[:q]}%'").each do |cidade|
      cidades << { id: cidade.id, nome: cidade.nome }
    end
    return cidades
  end
end
