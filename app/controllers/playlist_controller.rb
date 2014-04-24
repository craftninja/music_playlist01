class PlaylistController < ApplicationController

  def index
    @songs = Song.all
  end

  def create
    song = Song.new
    song.title = params[:title]
    song.url = params[:url]
    song.save
    redirect_to '/'
  end

  def update
    @song_id = params[:id]
    @song = Song.find(@song_id)

  end

end
