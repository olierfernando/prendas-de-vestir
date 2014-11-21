class CreateCalMujers < ActiveRecord::Migration
  def change
    create_table :cal_mujers do |t|
      t.string :tacones
      t.string :tenis
      t.string :tenis_deport
      t.string :chamcletas

      t.timestamps
    end
  end
end
