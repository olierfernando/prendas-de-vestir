class CreateCalzHombres < ActiveRecord::Migration
  def change
    create_table :calz_hombres do |t|
      t.string :zapatos
      t.string :tenis
      t.string :tenis_deport
      t.string :chamclas

      t.timestamps
    end
  end
end
