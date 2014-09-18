json.array!(@tallas) do |talla|
  json.extract! talla, :id, :medida_id
  json.url talla_url(talla, format: :json)
end
