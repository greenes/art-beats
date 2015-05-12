
class GalleriesController < ApplicationController

  before_action :authenticate_artist!, :only => [:create, :update, :destroy]

  def index
    @galleries = Gallery.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @galleries }
    end
  end

  def show
    @gallery = Gallery.find(params[:id])
    artistid = @gallery.artist_id
    @artist = Artist.find(artistid)
    @pieces = @gallery.pieces.all
  end

  def create
    @galleries = Gallery.all
    @gallery = artists.galleries.new(gallery_params)
      if @gallery.save
        render json: @galleries
      else
       render :new
     end
     render json: @gallery
  end

  def update
      @gallery = Gallery.find( params[:id] )
      @piece = Piece.create(piece_params)
    if @gallery.update( gallery_params )
      redirect_to @gallery
    else
      render :edit
    end

  end

  def destroy
    @galleries = Gallery.all
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    render json: @galleries
  end

private
  def gallery_params
    params.require(:gallery).permit(:user_id, :gallery_name, :description)
  end

  def piece_params
    params.require(:piece).permit(:gallery_id, :piece_name, :piece_date, :piece_description, :image)
  end

end
