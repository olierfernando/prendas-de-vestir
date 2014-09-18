class CreateTerminados < ActiveRecord::Migration
  def change
    create_table :terminados do |t|
      t.string :bordados
      t.string :estampado

      t.timestamps
    end
  end
end
