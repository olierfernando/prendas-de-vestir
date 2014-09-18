class CreateColores < ActiveRecord::Migration
  def change
    create_table :colores do |t|
      t.string :nombre
      t.string :codigo

      t.timestamps
    end
  end
end
