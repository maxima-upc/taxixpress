json.array!(@profiles) do |profile|
  json.extract! profile, :id, :nombre, :apellido, :dni, :movil, :nacimiento, :user_id
  json.url profile_url(profile, format: :json)
end
