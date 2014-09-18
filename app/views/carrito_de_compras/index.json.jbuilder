json.array!(@carrito_de_compras) do |carrito_de_compra|
  json.extract! carrito_de_compra, :id, :nombre_prodcuto, :codigo
  json.url carrito_de_compra_url(carrito_de_compra, format: :json)
end
