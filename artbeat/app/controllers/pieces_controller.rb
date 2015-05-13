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
    @profile = Profile.find(@artist.profile)
  end

  def new
    @piece = Piece.new
    @gallery = Gallery.find(params[:gallery_id])
    @artist = Artist.find(params[:artist_id])
  end

  def create
    @piece = Piece.new(piece_params)
      if @piece.save
        @artist = current_artist
        @profile = Profile.find(@artist.profile.id)
        redirect_to artist_profile_path(@artist, @profile)
      else
       render :new
     end
  end

  def update
      @piece = Piece.find( params[:id] )
    if @piece.update( piece_params )
      redirect_to @piece
    else
      render :edit
    end

  end

  def destroy
    @pieces = Piece.all
    @piece = Piece.find(params[:id])
    @piece.destroy
    redirect_to @pieces
  end

private
  def piece_params
    params.require(:piece).permit(:gallery_id, :piece_name, :piece_description, :picture)
  end


end
