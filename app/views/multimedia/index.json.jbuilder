json.array!(@multimedia) do |multimedium|
  json.extract! multimedium, :id, :server_location
  json.url multimedium_url(multimedium, format: :json)
end
