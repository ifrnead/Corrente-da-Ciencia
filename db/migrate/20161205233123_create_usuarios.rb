class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :ip
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
