class ArtistsController < ApplicationController
  def index
    if params[:search].present?
      @artists = SpotifyRuby::Artist.search(params[:search])
    else
      @artists = SpotifyRuby::Artist.search("the")
    end
  end

  def show
    @artist = SpotifyRuby::Artist.find(params[:id])
    @top_tracks = SpotifyRuby::Artist.search_top_tracks_by_artist(params[:id],"US")
  end 
end
