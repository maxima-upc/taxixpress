json.array!(@distrito_origens) do |distrito_origen|
  json.extract! distrito_origen, :id, :nombredistrito
  json.url distrito_origen_url(distrito_origen, format: :json)
end
