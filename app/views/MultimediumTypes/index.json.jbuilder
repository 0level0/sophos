json.array!(@multimedium_types) do |multimedia_type|
  json.extract! multimedia_type, :id, :media_type, :media_format
  json.url multimedia_type_url(multimedia_type, format: :json)
end
