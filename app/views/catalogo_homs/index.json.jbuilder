json.array!(@catalogo_homs) do |catalogo_hom|
  json.extract! catalogo_hom, :id, :jeans, :camisa, :chaquetas, :tenis, :camisilla, :pantaloneta
  json.url catalogo_hom_url(catalogo_hom, format: :json)
end
