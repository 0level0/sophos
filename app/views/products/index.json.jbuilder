json.array!(@products) do |product|
  json.extract! product, :id, :product_description
  json.url product_url(product, format: :json)
end
