json.array!(@product_regions) do |price|
  json.extract! price, :id, :product_region
  json.url price_url(price, format: :json)
end
