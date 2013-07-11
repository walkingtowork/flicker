class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to "/albums/#{@album.id}"
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    @album.update_attributes(params[:album])
    redirect_to "/albums/#{@album.id}"
  end

  def destroy
    @album = Album.find(params[:id])
    @album.delete
  end

  def show
    @album = Album.find(params[:id])
  end
end
