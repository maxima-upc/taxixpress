json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :dni, :usuario, :password, :nombre, :apellido, :movil, :nacimiento, :email
  json.url cliente_url(cliente, format: :json)
end
