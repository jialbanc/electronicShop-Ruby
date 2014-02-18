json.array!(@items) do |item|
  json.extract! item, :id, :code, :nombreitem, :descripcion, :color, :valor
  json.url item_url(item, format: :json)
end
