json.array!(@news) do |news|
  json.extract! news, :id, :headline
  json.url news_url(news, format: :json)
end
