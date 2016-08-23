json.array!(@playlists) do |playlist|
  json.extract! playlist, :id, :name, :author, :url
  json.url playlist_url(playlist, format: :json)
end
