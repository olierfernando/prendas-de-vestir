class CreateDatosDelClientes < ActiveRecord::Migration
  def change
    create_table :datos_del_clientes do |t|
      t.string :nombre
      t.string :cedula
      t.string :apellido
      t.string :telefono
      t.string :direccion
      t.string :email
      t.string :ciudad
      t.string :forma_de_pago

      t.timestamps
    end
  end
end
