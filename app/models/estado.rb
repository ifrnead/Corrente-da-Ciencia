class Estado < ActiveRecord::Base
  has_many :cidades

  def nome_sigla
    "#{self.nome} (#{self.sigla})"
  end

  def self.select
    options = Array.new
    self.all.each do |estado|
      options << [ estado.nome_sigla, estado.nome ]
    end
    return options
  end
end
