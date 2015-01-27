json.array!(@auto_washes) do |auto_wash|
  json.extract! auto_wash, :id, :location, :start, :close
  json.url auto_wash_url(auto_wash, format: :json)
end
