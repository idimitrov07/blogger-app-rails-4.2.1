class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

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

  def edit
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save
    flash.notice = "You added a '#{@photo.title}' photo!"
    redirect_to photos_path
  end

  def update
    @photo.update(photo_params)
    flash.notice = "Photo '#{@photo.title}' was updated!"
    redirect_to photos_path(@photo)
  end

  def destroy
    @photo.delete
    flash.notice = "You deleted photo post '#{@photo.title}'"
    redirect_to photos_path
  end


  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:title, :body, :url)
  end
end
