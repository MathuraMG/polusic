class HomeController < ApplicationController
  def index
    @playlists = Playlist.all
    @articles = Article.all
  end
end
