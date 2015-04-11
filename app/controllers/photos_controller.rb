class PhotosController < ApplicationController

  def index
    @photos = Photo.desc
  end

  def show
    @photo = Photo.find(params[:id])
    @comment = Comment.new
    @comment.photo_id = @photo.id
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save
    flash.notice = "You added a '#{@photo.title}' photo!"
    redirect_to photos_path
  end


  private
  def photo_params
    params.require(:photo).permit(:title, :body, :url)
  end
end
