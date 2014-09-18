class CreateCatalogos < ActiveRecord::Migration
  def change
    create_table :catalogos do |t|
      t.string :camisa
      t.string :vestido
      t.string :ropa_interior
      t.string :faldas
      t.string :blusas
      t.string :jeans
      t.string :zapatos
      t.string :tacones

      t.timestamps
    end
  end
end
