json.array!(@clients) do |client|
  json.extract! client, :id, :user, :passw, :nombre, :apellido, :birthday, :direccion
  json.url client_url(client, format: :json)
end
