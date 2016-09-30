class HomeController < ApplicationController
  def index
    @playlists = Playlist.all
    @articles = Article.all.order(order: :asc)
  end
  def present(article)
    if(article && article[/{{(.+)}}/,1])
      article.gsub!(/{{(.+)}}/) { Image.find(Integer(Regexp.last_match[1])).image.url}
    end
      article = article
  end

  helper_method :present
end
