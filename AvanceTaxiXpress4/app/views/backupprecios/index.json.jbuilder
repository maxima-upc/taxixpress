json.array!(@precios) do |precio|
  json.extract! precio, :id, :precioservicio, :distrito_origen_id, :distrito_destino_id
  json.url precio_url(precio, format: :json)
end
