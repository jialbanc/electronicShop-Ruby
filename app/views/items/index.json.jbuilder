json.array!(@items) do |item|
  json.extract! item, :id, :iditem, :nombreitem, :descripcionitem, :color, :valor
  json.url item_url(item, format: :json)
end
