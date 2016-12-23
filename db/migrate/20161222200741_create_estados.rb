class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.integer :codigo
      t.string :nome
      t.string :sigla, limit: 2
      t.string :pais

      t.timestamps null: false
    end
  end
end
