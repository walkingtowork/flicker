class PhotosController < ApplicationController
  def new
    @photo = Photo.new
    @album = Album.find(params[:album_id])
  end

  def create
    @photo = Photo.new(params[:photo])
    @photo.album_id = params[:album_id]
    if @photo.save
      redirect_to "/albums/#{@photo.album_id}"
      # redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    @photo.update_attributes(params[:photo])
    redirect_to "/albums/#{@photo.album_id}"
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.delete
  end

  def show
    @photo = Photo.find(params[:id])
  end
end

# private
# def find_album
#   @album = Album.find(params[:album_id])
# end
