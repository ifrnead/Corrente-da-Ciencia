class Estado < ActiveRecord::Base
  include Selectable

  has_many :cidades

  def nome_sigla
    "#{self.nome} (#{self.sigla})"
  end
end
