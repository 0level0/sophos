json.array!(@events) do |event|
  json.extract! event, :id, :event_details
  json.url event_url(event, format: :json)
end
