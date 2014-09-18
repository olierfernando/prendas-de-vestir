class CreateCarritoDeCompras < ActiveRecord::Migration
  def change
    create_table :carrito_de_compras do |t|
      t.string :nombre_prodcuto
      t.string :codigo

      t.timestamps
    end
  end
end
