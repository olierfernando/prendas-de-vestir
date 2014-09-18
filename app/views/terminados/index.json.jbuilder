json.array!(@terminados) do |terminado|
  json.extract! terminado, :id, :bordados, :estampado
  json.url terminado_url(terminado, format: :json)
end
