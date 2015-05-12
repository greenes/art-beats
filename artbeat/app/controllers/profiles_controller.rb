class ProfilesController < ApplicationController


  def index
    @artists = Artist.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @artists }
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
    @profile = Profile.new
  end

  def create
    @profile = Profile.all
    @profile = artists.galleries.new(gallery_params)
      if @gallery.save
        render json: @galleries
      else
       render :new
     end
     render json: @gallery
  end

  def update
      @profile = Profile.find( params[:id] )
    if @profile.update( profile_params )
      redirect_to @profile
    else
      render :edit
    end

  end

  def destroy
    @profiles = Profile.all
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to @profiles
  end

private
  def profile_params
    params.require(:profile).permit(:artist_id, :name, :profile)
  end


end
