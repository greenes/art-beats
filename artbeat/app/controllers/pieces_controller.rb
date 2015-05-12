class PiecesController < ApplicationController


  def index
    @pieces = Piece.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @pieces }
    end
  end

  def show
    @piece = Piece.find(params[:id])
    galleryid = @piece.gallery_id
    @gallery = Gallery.find(galleryid)
    artistid = @gallery.artist_id
    @artist = Artist.find(artistid)
  end

  def new
    @piece = Piece.new
  end

  def create
    @pieces = Gallery.all
    @piece = users.galleries.new(gallery_params)
      if @gallery.save
        render json: @galleries
      else
       render :new
     end
     render json: @gallery
  end

  def update
      @gallery = Gallery.find( params[:id] )
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


end
