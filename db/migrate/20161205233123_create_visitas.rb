class CreateVisitas < ActiveRecord::Migration
  def change
    create_table :visitas do |t|
      t.string :ip
      t.float :latitude
      t.float :longitude
      t.string :cidade
      t.string :uf
      t.string :pais
      t.integer :fonte

      t.timestamps null: false
    end
  end
end
