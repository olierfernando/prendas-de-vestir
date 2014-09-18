json.array!(@datos_del_clientes) do |datos_del_cliente|
  json.extract! datos_del_cliente, :id, :nombre, :cedula, :apellido, :telefono, :direccion, :email, :ciudad, :forma_de_pago
  json.url datos_del_cliente_url(datos_del_cliente, format: :json)
end
