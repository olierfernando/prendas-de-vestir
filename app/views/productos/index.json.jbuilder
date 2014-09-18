json.array!(@productos) do |producto|
  json.extract! producto, :id, :ficha_id, :referencia, :precio, :cantidad, :talla_id, :color_id, :terminado_id
  json.url producto_url(producto, format: :json)
end
