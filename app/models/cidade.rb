class Cidade < ActiveRecord::Base
  belongs_to :estado

  def self.buscar(query:, estado:)
    options = Array.new
    estado = Estado.find_by_nome(estado)
    cidades = estado.cidades.where("nome LIKE '%#{query}%'")
    cidades.each do |cidade|
      options << { id: cidade.nome, nome: cidade.nome }
    end
    return options
  end
end
