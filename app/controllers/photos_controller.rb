class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save
    flash.notice = "You added a photo '#{@photo.title}'!"
    redirect_to photos_path
  end


  private
  def photo_params
    params.require(:photo).permit(:title, :body)
  end
end
