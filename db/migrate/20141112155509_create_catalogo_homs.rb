class CreateCatalogoHoms < ActiveRecord::Migration
  def change
    create_table :catalogo_homs do |t|
      t.string :jeans
      t.string :camisa
      t.string :chaquetas
      t.string :tenis
      t.string :camisilla
      t.string :pantaloneta

      t.timestamps
    end
  end
end
