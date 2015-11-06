class ArtistController < ApplicationController
  def index
    @artists = SpotifyRuby::Artist.search("Lady")
  end
end
