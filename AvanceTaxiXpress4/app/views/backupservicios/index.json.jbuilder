json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :direccionorigen, :direcciondestino, :fechaservicio, :horaservicio, :pasajeros, :cliente_id, :precio_id
  json.url servicio_url(servicio, format: :json)
end
