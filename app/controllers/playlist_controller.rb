class PlaylistController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    song = Song.new
    song.title = params[:title]
    song.url = params[:url]
    song.save
    redirect_to '/'
  end

end
