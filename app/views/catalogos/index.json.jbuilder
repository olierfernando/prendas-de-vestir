json.array!(@catalogos) do |catalogo|
  json.extract! catalogo, :id, :camisa, :vestido, :ropa_interior, :faldas, :blusas, :jeans, :zapatos, :tacones
  json.url catalogo_url(catalogo, format: :json)
end
