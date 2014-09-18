class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.references :ficha, index: true
      t.string :referencia
      t.string :precio
      t.string :cantidad
      t.references :talla, index: true
      t.references :color, index: true
      t.references :terminado, index: true

      t.timestamps
    end
  end
end
