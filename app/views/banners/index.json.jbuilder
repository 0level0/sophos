json.array!(@banners) do |banner|
  json.extract! banner, :id, :server_image_url, :,associated_link
  json.url banner_url(banner, format: :json)
end
