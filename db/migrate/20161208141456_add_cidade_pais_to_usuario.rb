class AddCidadePaisToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :cidade, :string
    add_column :usuarios, :uf, :string
    add_column :usuarios, :pais, :string
  end
end
