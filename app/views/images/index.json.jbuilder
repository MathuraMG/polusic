json.array!(@images) do |image|
  json.extract! image, :id, :name, :image, :description
  json.url image_url(image, format: :json)
end
