class ArtistsController < ApplicationController
  def index
    @artists = SpotifyRuby::Artist.search("Lady")
  end

  def show
    @artist = SpotifyRuby::Artist.find(params[:id])
    @top_tracks = SpotifyRuby::Artist.search_top_tracks_by_artist(params[:id],"US")
  end 
end
