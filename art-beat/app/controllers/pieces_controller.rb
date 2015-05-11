
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
    userid = galleryid.user_id
    @user = User.find(userid)
  end

  def create
    @pieces = Piece.all
    @piece = galleries.pieces.new(piece_params)
      if @piece.save
        redurect_to @pieces
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
    redirect_to @galleries
  end

private
  def piece_params
    params.require(:gallery).permit(:gallery_id, :piece_name, :piece_date, :piece_description)
  end


end
