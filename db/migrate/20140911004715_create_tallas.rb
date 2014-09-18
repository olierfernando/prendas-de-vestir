class CreateTallas < ActiveRecord::Migration
  def change
    create_table :tallas do |t|
      t.references :medida, index: true

      t.timestamps
    end
  end
end
