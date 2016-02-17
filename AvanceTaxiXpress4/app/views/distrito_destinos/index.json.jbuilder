json.array!(@distrito_destinos) do |distrito_destino|
  json.extract! distrito_destino, :id, :nombredistrito
  json.url distrito_destino_url(distrito_destino, format: :json)
end
