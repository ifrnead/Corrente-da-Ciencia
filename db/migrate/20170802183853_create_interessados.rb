class CreateInteressados < ActiveRecord::Migration
  def change
    create_table :interessados do |t|
      t.string :email

      t.timestamps null: false
    end
  end
end
