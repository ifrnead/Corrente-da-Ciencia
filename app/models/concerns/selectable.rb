module Selectable
  extend ActiveSupport::Concern

  module ClassMethods
    def select(method = 'nome')
      options = Array.new
      self.all.each do |element|
        options << [element.send(method), element.id]
      end
      return options
    end
  end
end
