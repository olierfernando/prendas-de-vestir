json.array!(@colores) do |color|
  json.extract! color, :id, :nombre_color_id
  json.url color_url(color, format: :json)
end
