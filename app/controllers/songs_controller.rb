class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
        @genre = @song.genre
        @artist = @song.artist
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(name: params[:song][:name], genre_id: params[:song][:genre_id], artist_id: params[:song][:artist_id])
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find(params[:id])
    end
    
    def update
        @song = Song.find(params[:id])
        @song.update(name: params[:song][:name], genre_id: params[:song][:genre_id], artist_id: params[:song][:artist_id])
        redirect_to song_path(@song)
    end

    def destroy
    end

end
